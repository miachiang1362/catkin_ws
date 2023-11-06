from __future__ import print_function
import numpy as np
import scipy.io
from scipy.signal import butter, lfilter, freqz ,filtfilt
#import pandas as pd
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt
from matplotlib import cm
from matplotlib.ticker import LinearLocator, FormatStrFormatter
from beamfun.beamfun import *
from test2.srv import Beam,BeamResponse
import rospy

def  handle_Beam(req):

    mat2 = scipy.io.loadmat("input.mat")
    #print(mat2)
    inputSignal = mat2['inputSignal']
    inputSignal = inputSignal.T
    #print(np.shape(inputSignal))
    f = 4000
    c = 1500
    fs = 96000
    M = 1
    N = 4
    nElements = 4
    radius = 0.127
    phi = np.arange(0,1,1/nElements)*2*np.pi
    rho = np.ones((1,nElements))*radius
    rho = rho[0]
    #print(rho[0])
    #print(phi[1])
    xPos = np.zeros((1,nElements))
    xPos = xPos[0]
    yPos = np.zeros((1,nElements))
    yPos = yPos[0]
    zPos = np.zeros((1,nElements))
    zPos = zPos[0]
    for i in range(nElements):
        x,y = pol2cart(rho[i],phi[i])
        xPos[i] = x
        yPos[i] = y

    thetaScanAngles = np.linspace(-90,90,361)
    phiScanAngles = np.linspace(0,180,181)

    e,u,v,w = steeringVector(xPos,yPos,zPos,f,c,thetaScanAngles,phiScanAngles)

    R = crossSpectralMatrix(inputSignal)

    SMUSIC = steeredResponseMUSIC(R,e,w,N,M)

    spectrumNormalizedMUSIC = np.abs(SMUSIC)/np.max(np.abs(SMUSIC))

    corr_diff = audio_filt(inputSignal)
    corr_diff = corr_diff[0]

    ru,rv = responsePeak(spectrumNormalizedMUSIC,u,v,corr_diff)

    ang,ele = angcal(ru,rv)



    print("Returning [%s  = %s]"%(req.In, ang))
    return BeamResponse(ang)

def Beam_server():
    rospy.init_node('Beam_server')
    s = rospy.Service('Beam', Beam , handle_Beam)
    print("Ready to localization.")
    rospy.spin()

if __name__ == "__main__":
    Beam_server()