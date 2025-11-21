.class final Lcom/samsung/android/allshare/DeviceImpl;
.super Lcom/samsung/android/allshare/Device;
.source "DeviceImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;
.implements Lcom/sec/android/allshare/iface/IHandlerHolder;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DeviceImpl"


# instance fields
.field private blacklist mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

.field private blacklist mDeviceBundle:Landroid/os/Bundle;

.field blacklist mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/allshare/Device;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iput-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    new-instance v0, Lcom/samsung/android/allshare/DeviceImpl$1;

    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/DeviceImpl$1;-><init>(Lcom/samsung/android/allshare/DeviceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    iput-object p1, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public blacklist getBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public whitelist getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v0, "BUNDLE_ENUM_DEVICE_DOMAIN"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/allshare/Device$DeviceDomain;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Device$DeviceDomain;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceDomain;

    :cond_0
    return-object p0
.end method

.method public whitelist getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v0, "BUNDLE_ENUM_DEVICE_TYPE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/allshare/Device$DeviceType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceType;

    :cond_0
    return-object p0
.end method

.method public whitelist getID()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "BUNDLE_STRING_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getIPAddress()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "BUNDLE_STRING_DEVICE_IP_ADDRESS"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getIcon()Landroid/net/Uri;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "BUNDLE_PARCELABLE_DEVICE_DEFAULT_ICON"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    :goto_0
    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public blacklist getIconList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Icon;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "BUNDLE_PARCELABLE_DEVICE_DEFAULT_ICONLIST"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    new-instance v2, Lcom/samsung/android/allshare/IconImpl;

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v2, v1}, Lcom/samsung/android/allshare/IconImpl;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public whitelist getModelName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "BUNDLE_STRING_DEVICE_MODELNAME"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getNIC()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "BUNDLE_STRING_BOUND_INTERFACE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "BUNDLE_STRING_DEVICE_NAME"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getP2pMacAddress()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "BUNDLE_STRING_MIRRORING_MAC"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    const-string v1, "BUNDLE_STRING_SECPRODUCTCAP"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_5

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/samsung/android/allshare/DeviceImpl$2;->$SwitchMap$com$samsung$android$allshare$Device$InformationType:[I

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device$InformationType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ScreenMirroringP2PMAC="

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 v0, p1, 0x16

    add-int/lit8 p1, p1, 0x27

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    return-object p0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public whitelist getScreenSharingInfo()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "BUNDLE_STRING_SCREENSHARING"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    const-string v1, "BUNDLE_STRING_SCREENSHARING"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_5

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/samsung/android/allshare/DeviceImpl$2;->$SwitchMap$com$samsung$android$allshare$Device$InformationType:[I

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device$InformationType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "p2pDeviceAddress:"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 v0, p1, 0x11

    add-int/lit8 p1, p1, 0x22

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getScreenSharingInfo macAddress : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceImpl"

    invoke-static {v0, p1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    return-object p0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public blacklist getScreenSharingP2pMacAddr()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/allshare/Device$InformationType;->P2P_MAC_ADDRESS:Lcom/samsung/android/allshare/Device$InformationType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/allshare/DeviceImpl;->getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSecProductP2pMacAddr()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/allshare/Device$InformationType;->P2P_MAC_ADDRESS:Lcom/samsung/android/allshare/Device$InformationType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/allshare/DeviceImpl;->getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist isSeekableOnPaused()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v0, "BUNDLE_BOOLEAN_SMSC_iS_SEEKABLE_ON_PAUSE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isSupportedByType(I)Z
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v0, "DeviceImpl"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "[isSupportedByType] : [Type]UNKNOWNmDeviceBundle  is null"

    invoke-static {v0, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const-string p0, "UNKNOWN"

    goto :goto_0

    :cond_1
    const-string p1, "BUNDLE_BOOLEAN_SUPPORT_AUDIO"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string p0, "AUDIO"

    goto :goto_0

    :cond_2
    const-string p1, "BUNDLE_BOOLEAN_SUPPORT_VIDEO"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string p0, "VIDEO"

    goto :goto_0

    :cond_3
    const-string p1, "BUNDLE_BOOLEAN_SUPPORT_IMAGE"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string p0, "IMAGE"

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "[isSupportedByType] : [Type]"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[isSupported]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public whitelist isWholeHomeAudio()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v0, "BUNDLE_BOOLEAN_SMSC_IS_WHOLE_HOME_AUDIO"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist removeEventHandler()V
    .locals 0

    return-void
.end method

.method public blacklist requestMobileToTV(Ljava/lang/String;I)V
    .locals 5

    const-string/jumbo v0, "requestMobileToTV : call requestMobileToTV"

    const-string v1, "DeviceImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-static {v0}, Lcom/samsung/android/allshare/ServiceConnectionChecker;->isAllShareServiceConnected(Lcom/samsung/android/allshare/IAllShareConnector;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "requestMobileToTV : SERVICE_NOT_CONNECTED"

    invoke-static {v1, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    const-string v2, "com.sec.android.allshare.action.ACTION_REQUEST_MOBILE_TO_TV"

    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "BUNDLE_STRING_SCREENSHARING_IP"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "BUNDLE_STRING_SCREENSHARING_PORT"

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/allshare/DeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "requestMobileToTV : port : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const-string/jumbo p0, "requestMobileToTV Fail :  ip is null or port is wrong "

    invoke-static {v1, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method blacklist setAllShareConnector(Lcom/samsung/android/allshare/IAllShareConnector;)V
    .locals 2

    const-string v0, "DeviceImpl"

    if-nez p1, :cond_0

    const-string p0, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v1, :cond_1

    const-string p0, "deviceImpl is null"

    invoke-static {v0, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/allshare/DeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    return-void
.end method
