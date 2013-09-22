package com.cyanogenmod.fmradio;

import com.cyanogenmod.fmradio.IFMTransmitterServiceCallbacks;
interface IFMTransmitterService
{
    boolean fmOn();
    boolean fmOff();
    boolean fmRestart();
    boolean isFmOn();
    boolean fmReconfigure();
    void registerCallbacks(IFMTransmitterServiceCallbacks cb);
    void unregisterCallbacks();
    boolean tune(int frequency);
    boolean searchWeakStationList(int numStations);
    int[]   getSearchList();
    boolean cancelSearch();
    String getRadioText();
    boolean isInternalAntennaAvailable();
    boolean isHeadsetPlugged();
    boolean isCallActive();
    String  getPSData();
}

