.class public Lcom/android/server/PlayerExternalChipsetBesRichwave;
.super Lcom/android/server/PlayerExternalChipsetBes;
.source "PlayerExternalChipsetBesRichwave.java"

# interfaces
.implements Lcom/android/server/RichwaveTuningParameteres;


# static fields
.field private static final blacklist SEEKTUNE_TIMEOUT:I = 0x834

.field private static final blacklist TAG:Ljava/lang/String; = "FMRadioExtRichwave"


# instance fields
.field private blacklist isThreadRunning:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mNeedOnTestMode:Z

.field private blacklist mNeedToStopSeek:Z

.field private blacklist registerList:[I

.field private blacklist restoreRdsForScan:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/server/FMRadioService;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBes;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mNeedOnTestMode:Z

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->registerList:[I

    iput-object p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mService:Lcom/android/server/FMRadioService;

    return-void

    :array_0
    .array-data 4
        0x3
        0x4
        0x5
        0x7
        0x8
        0x9
        0xa
        0xb
        0x10
        0x12
        0x13
        0x14
        0x15
        0x2b
        0x2c
        0x2d
    .end array-data
.end method

.method private blacklist closeConnection()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->isThreadRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    return-void
.end method

.method private blacklist getFMICDebugInfo(I)V
    .locals 9

    const/4 v0, 0x2

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v7, 0x2

    const/16 v8, 0xfa0

    const/16 v2, 0xc0

    const/16 v3, 0xa2

    const/16 v4, 0x10

    move v5, p1

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getFMICDebugInfo: register: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", data: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public static blacklist log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FMRadioExtRichwave"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist openConnection()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "can\'t open connection"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->isThreadRunning:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string/jumbo p0, "thread is running, already open connection"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "log request to grant permission"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    const-string v4, "com.sec.android.app.fm"

    invoke-virtual {v0, v3, v4}, Landroid/hardware/usb/UsbManager;->grantPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo p0, "permission not granted"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object p0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private blacklist printFMICInfo()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->registerList:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->getFMICDebugInfo(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized blacklist seekTune(II)V
    .locals 13

    const-string v0, "cmd:"

    monitor-enter p0

    const/16 v1, 0x9

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsTuning:Z

    iput p2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mCmdTuneFreq:I

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeeking:Z

    invoke-virtual {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->getTunedFrequency()I

    move-result v3

    iput v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mPreviousTuneFreq:I

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsRDSEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->rdsParser:Lcom/android/server/RDSParser;

    invoke-virtual {v3}, Lcom/android/server/RDSParser;->reset()V

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeekTuneing:Z

    iget-boolean v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    const/4 v4, 0x0

    if-nez v3, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startNotifyThread(Z)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsRDSEnabled:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->setRdsEnable(Z)Z

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    new-array v10, v2, [B

    const/4 v5, -0x1

    aput-byte v5, v10, v4

    iget-object v5, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v11, 0x1

    const/16 v12, 0xfa0

    const/16 v6, 0xc0

    const/16 v7, 0xa1

    move v8, p1

    move v9, p2

    invoke-virtual/range {v5 .. v12}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ret: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", data: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ascii: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    move p1, v4

    :cond_4
    iget-boolean p2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeekTuneing:Z

    const/4 v0, 0x7

    if-eqz p2, :cond_5

    add-int/2addr p1, v2

    const-wide/16 v5, 0xa

    invoke-virtual {p0, v5, v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    const/16 p2, 0x834

    if-ne p1, p2, :cond_4

    iput-boolean v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeekTuneing:Z

    if-ne v8, v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->stopSeek()Z

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "after "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v8, v0, :cond_6

    const-string/jumbo p2, "seek"

    goto :goto_2

    :cond_6
    const-string/jumbo p2, "tune"

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    if-ne v8, v1, :cond_7

    iput-boolean v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsTuning:Z

    iget-boolean p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mNeedToStopSeek:Z

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->stopSeekExecute()Z

    iput-boolean v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mNeedToStopSeek:Z

    goto :goto_3

    :cond_7
    iput-boolean v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeeking:Z

    :cond_8
    :goto_3
    iget-boolean p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    if-nez p1, :cond_a

    if-eqz v3, :cond_9

    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->setRdsEnable(Z)Z

    :cond_9
    invoke-virtual {p0, v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->stopNotifyThread(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private blacklist setTestMode(I)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setTestMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v6, v0, [B

    const/4 v0, -0x1

    const/4 v1, 0x0

    aput-byte v0, v6, v1

    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v7, 0x1

    const/16 v8, 0xfa0

    const/16 v2, 0xc0

    const/16 v3, 0xa1

    const/16 v4, 0xd

    move v5, p1

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "test_mode ret: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", data: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ascii: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const-wide/16 v0, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    return-void
.end method

.method private blacklist stopSeekExecute()Z
    .locals 11

    iget-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeeking:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeekTuneing:Z

    return v1

    :cond_2
    new-array v8, v2, [B

    const/4 v0, -0x1

    aput-byte v0, v8, v1

    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v9, 0x1

    const/16 v10, 0xc8

    const/16 v4, 0xc0

    const/16 v5, 0xa1

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "seek_stop ret: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ascii: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const-wide/16 v3, 0x32

    invoke-virtual {p0, v3, v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    iget-boolean v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeeking:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mPreviousTuneFreq:I

    iput v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mSeekFreq:I

    :cond_3
    iput-boolean v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeekTuneing:Z

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    const-string/jumbo p0, "stopSeek is done"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    if-lez v0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public static blacklist toASCII([B)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    if-eqz v2, :cond_0

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist destruct()V
    .locals 1

    const-string v0, "destruct"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    :cond_0
    return-void
.end method

.method public blacklist getBand()I
    .locals 10

    const-string v0, "getBand"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v7, v0, [B

    fill-array-data v7, :array_0

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v8, 0x2

    const/16 v9, 0xfa0

    const/16 v3, 0xc0

    const/16 v4, 0xa2

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get_band_cmd ret: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ascii: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    if-ne v2, v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "get_band_cmd[0]: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v7, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - get_band_cmd[1]: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-byte v0, v7, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->bytesToInt([B)I

    move-result p0

    return p0

    :cond_1
    return v1

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist getChannelSpacing()I
    .locals 10

    const-string v0, "getChannelSpacing"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v7, v0, [B

    fill-array-data v7, :array_0

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v8, 0x2

    const/16 v9, 0xfa0

    const/16 v3, 0xc0

    const/16 v4, 0xa2

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get_spacing_cmd ret: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ascii: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    if-ne v2, v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "get_spacing_cmd[0]: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v7, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - get_spacing_cmd[1]: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-byte v0, v7, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->bytesToInt([B)I

    move-result p0

    return p0

    :cond_1
    return v1

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist getCntThreshold()I
    .locals 0

    const-string p0, "getCntThreshold"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getDEConstant()I
    .locals 0

    const-string p0, "getDEConstant"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getFirmwareVersion()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    const/16 v1, 0xc

    new-array v7, v1, [B

    fill-array-data v7, :array_0

    const/16 v9, 0x190

    iget-object v2, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v3, 0x40

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xc

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getFirmwareVersion getFirmwareVersion SEND ascii = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const/16 v1, 0xe

    new-array v15, v1, [B

    const/16 v17, 0x190

    iget-object v10, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v11, 0xc0

    const/16 v12, 0xc

    move/from16 v16, v1

    move v13, v5

    move v14, v6

    invoke-virtual/range {v10 .. v17}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    invoke-static {v15}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getFirmwareVersion getFirmwareVersion BACK ascii = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x51t
        0x55t
        0x45t
        0x52t
        0x59t
        0x5ft
        0x53t
        0x57t
        0x5ft
        0x56t
        0x45t
        0x52t
    .end array-data
.end method

.method public blacklist getIntTuningParameter(Ljava/lang/String;I)I
    .locals 0

    const-string p0, "getIntTuningParameter"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getLongTuningParameter(Ljava/lang/String;J)J
    .locals 0

    const-string p0, "getLongTuningParameter"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public blacklist getRssiThreshold()I
    .locals 10

    const-string v0, "getRssiThreshold"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v7, v0, [B

    fill-array-data v7, :array_0

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v8, 0x2

    const/16 v9, 0xfa0

    const/16 v3, 0xc0

    const/16 v4, 0xa2

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get_rssith_cmd ret: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ascii: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    if-ne v2, v0, :cond_1

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->bytesToInt([B)I

    move-result p0

    return p0

    :cond_1
    return v1

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist getSeekDC()I
    .locals 10

    const-string v0, "getSeekDC"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v7, v0, [B

    fill-array-data v7, :array_0

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v8, 0x2

    const/16 v9, 0xfa0

    const/16 v3, 0xc0

    const/16 v4, 0xa2

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get_dc_cmd ret: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ascii: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    if-ne v2, v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "get_dc_cmd[0]: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v7, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - get_dc_cmd[1]: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-byte v0, v7, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->bytesToInt([B)I

    move-result p0

    return p0

    :cond_1
    return v1

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist getSeekQA()I
    .locals 10

    const-string v0, "getSeekQA"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v7, v0, [B

    fill-array-data v7, :array_0

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v8, 0x2

    const/16 v9, 0xfa0

    const/16 v3, 0xc0

    const/16 v4, 0xa2

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get_qa_cmd ret: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ascii: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    if-ne v2, v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "get_qa_cmd[0]: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v7, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - get_qa_cmd[1]: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-byte v0, v7, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->bytesToInt([B)I

    move-result p0

    return p0

    :cond_1
    return v1

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist getSnrThreshold()I
    .locals 0

    const-string/jumbo p0, "setSnrThreshold"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getSoundMode()Z
    .locals 10

    const-string v0, "getSoundMode"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v7, v0, [B

    fill-array-data v7, :array_0

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v8, 0x2

    const/16 v9, 0xfa0

    const/16 v3, 0xc0

    const/16 v4, 0xa2

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get_soundmode_cmd ret: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ascii: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    if-ne v2, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "data[0]: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v2, v7, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - data[1]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-byte v3, v7, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    new-array v0, v2, [B

    aput-byte v2, v0, v1

    invoke-virtual {p0, v7, v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result p0

    return p0

    :cond_1
    return v1

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist getStringTuningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "getStringTuningParameter"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getTunedFrequency()I
    .locals 10

    const-string v0, "getTunedFrequency"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v7, v0, [B

    fill-array-data v7, :array_0

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v8, 0x2

    const/16 v9, 0xfa0

    const/16 v3, 0xc0

    const/16 v4, 0xa2

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getTunedFrequency ret: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ascii: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    if-ne v2, v0, :cond_1

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->bytesToInt([B)I

    move-result p0

    return p0

    :cond_1
    return v1

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist getVolume()I
    .locals 10

    const-string v0, "getVolume"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v7, v0, [B

    fill-array-data v7, :array_0

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v8, 0x2

    const/16 v9, 0xfa0

    const/16 v3, 0xc0

    const/16 v4, 0xa2

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get_volume_cmd ret: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ascii: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    if-ne v2, v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "get_volume_cmd[0]: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-byte v0, v7, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - get_volume_cmd[1]: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-byte v0, v7, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->bytesToInt([B)I

    move-result p0

    return p0

    :cond_1
    return v1

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist init(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    const-string v0, "init"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbManager:Landroid/hardware/usb/UsbManager;

    :cond_0
    iput-object p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    iget-object p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mUsbDevice: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsTuning:Z

    iput-boolean p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeekTuneing:Z

    iput-boolean p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    return-void
.end method

.method public blacklist initTuningParameters()V
    .locals 0

    const-string p0, "initTuningParameters"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist isAfEnabled()Z
    .locals 0

    const-string p0, "isAfEnabled"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isOn()Z
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "isOn"

    invoke-static {v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x2

    new-array v8, v1, [B

    fill-array-data v8, :array_0

    iget-object v3, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v9, 0x2

    const/16 v10, 0xfa0

    const/16 v4, 0xc0

    const/16 v5, 0xa2

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fm_state_cmd ret: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", data: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    new-array v14, v1, [B

    fill-array-data v14, :array_1

    iget-object v9, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v10, 0xc0

    const/16 v11, 0xa2

    const/16 v12, 0x11

    const/4 v13, 0x0

    invoke-virtual/range {v9 .. v16}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "recording_status_cmd ret: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    const/4 v1, 0x1

    new-array v3, v1, [B

    aput-byte v1, v3, v2

    invoke-virtual {v0, v8, v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v3

    if-nez v3, :cond_2

    new-array v3, v1, [B

    aput-byte v1, v3, v2

    invoke-virtual {v0, v14, v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist isRdsEnabled()Z
    .locals 10

    const-string v0, "isRdsEnabled"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v7, v0, [B

    fill-array-data v7, :array_0

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v8, 0x2

    const/16 v9, 0xfa0

    const/16 v3, 0xc0

    const/16 v4, 0xa2

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "is_rdsenabled_cmd ret: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ascii: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    if-ne v2, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "data[0]: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v2, v7, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - data[1]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-byte v3, v7, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    new-array v0, v2, [B

    aput-byte v2, v0, v1

    invoke-virtual {p0, v7, v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result p0

    return p0

    :cond_1
    return v1

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist muteOff()V
    .locals 9

    const-string/jumbo v0, "muteOff"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v6, v0, [B

    const/4 v0, -0x1

    const/4 v1, 0x0

    aput-byte v0, v6, v1

    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v7, 0x1

    const/16 v8, 0xfa0

    const/16 v2, 0xc0

    const/16 v3, 0xa1

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mute_off_cmd ret: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", data: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ascii: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    return-void
.end method

.method public blacklist muteOn()V
    .locals 9

    const-string/jumbo v0, "muteOn"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v6, v0, [B

    const/4 v0, -0x1

    const/4 v1, 0x0

    aput-byte v0, v6, v1

    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v7, 0x1

    const/16 v8, 0xfa0

    const/16 v2, 0xc0

    const/16 v3, 0xa1

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mute_on_cmd ret: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", data: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ascii: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    return-void
.end method

.method public blacklist off()Z
    .locals 20

    move-object/from16 v0, p0

    const-string/jumbo v1, "off"

    invoke-static {v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeekTuneing:Z

    invoke-direct {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    new-array v8, v2, [B

    const/4 v3, -0x1

    aput-byte v3, v8, v1

    iget-object v3, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v9, 0x1

    const/16 v10, 0xfa0

    const/16 v4, 0xc0

    const/16 v5, 0xa1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "off_fm_cmd ret: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", data: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const-wide/16 v6, 0x32

    invoke-virtual {v0, v6, v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    const-string/jumbo v4, "off set power state done"

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    new-array v13, v2, [B

    iget-object v8, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v14, 0x1

    const/16 v15, 0xfa0

    const/16 v9, 0xc0

    const/16 v10, 0xa1

    const/16 v11, 0xe

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v15}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "set_record_cmd ret: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    const/4 v4, 0x2

    new-array v11, v4, [B

    fill-array-data v11, :array_0

    iget-object v6, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v12, 0x2

    const/16 v13, 0xfa0

    const/16 v7, 0xc0

    const/16 v8, 0xa2

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "fm_state_cmd ret: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    new-array v4, v4, [B

    iget-object v12, v0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v13, 0xc0

    const/16 v14, 0xa2

    const/16 v15, 0x11

    const/16 v16, 0x0

    move-object/from16 v17, v4

    invoke-virtual/range {v12 .. v19}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v4

    move-object/from16 v6, v17

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "recording_status_cmd ret: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    new-array v3, v2, [B

    aput-byte v1, v3, v1

    invoke-virtual {v0, v11, v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    new-array v3, v2, [B

    aput-byte v1, v3, v1

    invoke-virtual {v0, v6, v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist on()Z
    .locals 14

    const-string/jumbo v0, "on"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->getFirmwareVersion()Ljava/lang/String;

    const/4 v0, 0x2

    new-array v7, v0, [B

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/16 v3, 0xc0

    const/16 v4, 0xa2

    const/16 v5, 0x11

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "recording_status_cmd ret: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ascii: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v5, v3, [B

    aput-byte v3, v5, v1

    invoke-virtual {p0, v7, v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p0, "Do not turn on FM in playback mode cause current mode are recording"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    return v1

    :cond_1
    new-array v10, v0, [B

    iget-object v5, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/16 v6, 0xc0

    const/16 v7, 0xa2

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ret: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    if-ne v5, v0, :cond_2

    new-array v5, v3, [B

    aput-byte v3, v5, v1

    invoke-virtual {p0, v10, v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v5

    if-eqz v5, :cond_2

    new-array v11, v3, [B

    const/4 v5, -0x1

    aput-byte v5, v11, v1

    const-string/jumbo v5, "on set power state begin"

    invoke-static {v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v12, 0x1

    const/16 v13, 0xfa0

    const/16 v7, 0xc0

    const/16 v8, 0xa1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v6 .. v13}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "open_fm_cmd ret: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const-wide/16 v5, 0x14

    invoke-virtual {p0, v5, v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    const-string/jumbo v5, "on set power state done"

    invoke-static {v5}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    new-array v11, v0, [B

    fill-array-data v11, :array_0

    iget-object v6, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v12, 0x2

    const/16 v7, 0xc0

    const/16 v8, 0xa2

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fm_state_cmd ret: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    new-array v0, v3, [B

    aput-byte v3, v0, v1

    invoke-virtual {p0, v11, v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v3

    :cond_2
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    return v1

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist searchAll()J
    .locals 2

    const-string/jumbo v0, "searchAll"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->seekUp()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist seekDown()J
    .locals 2

    const-string/jumbo v0, "seekDown"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const/4 v0, 0x7

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->seekTune(II)V

    iget p0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mSeekFreq:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public blacklist seekUp()J
    .locals 2

    const-string/jumbo v0, "seekUp"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->seekTune(II)V

    iget p0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mSeekFreq:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public blacklist setAfEnable(Z)Z
    .locals 0

    const-string/jumbo p0, "setAfEnable"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setBand(I)Z
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBand"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v7, v0, [B

    const/4 v2, -0x1

    aput-byte v2, v7, v1

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v8, 0x1

    const/16 v9, 0xfa0

    const/16 v3, 0xc0

    const/16 v4, 0xa1

    const/4 v5, 0x1

    move v6, p1

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "set_band_cmd ret: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ascii: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    const-wide/16 v2, 0xf

    invoke-virtual {p0, v2, v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    if-ne p1, v0, :cond_1

    new-array p1, v0, [B

    aput-byte v1, p1, v1

    invoke-virtual {p0, v7, p1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public blacklist setChannelSpacing(I)Z
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setChannelSpacing"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v7, v0, [B

    const/4 v2, -0x1

    aput-byte v2, v7, v1

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v8, 0x1

    const/16 v9, 0xfa0

    const/16 v3, 0xc0

    const/16 v4, 0xa1

    const/4 v5, 0x3

    move v6, p1

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "set_space_cmd ret: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ascii: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    const-wide/16 v2, 0xf

    invoke-virtual {p0, v2, v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    if-ne p1, v0, :cond_1

    new-array p1, v0, [B

    aput-byte v1, p1, v1

    invoke-virtual {p0, v7, p1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public blacklist setCntThreshold(I)V
    .locals 0

    const-string/jumbo p0, "setSnrThreshold"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setDEConstant(I)Z
    .locals 0

    const-string/jumbo p0, "setDEConstant"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setIntTuningParameter(Ljava/lang/String;I)V
    .locals 0

    const-string/jumbo p0, "setIntTuningParameter"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setLongTuningParameter(Ljava/lang/String;J)V
    .locals 0

    const-string/jumbo p0, "setLongTuningParameter"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setRdsEnable(Z)Z
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setRdsEnable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsRDSEnabled:Z

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "RDS already "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsRDSEnabled:Z

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    new-array v8, v1, [B

    const/4 v0, -0x1

    aput-byte v0, v8, v2

    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v9, 0x1

    const/16 v10, 0xfa0

    const/16 v4, 0xc0

    const/16 v5, 0xa1

    const/16 v6, 0xa

    move v7, p1

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "set_rds_cmd ret: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", data: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ascii: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const-wide/16 v3, 0xa

    invoke-virtual {p0, v3, v4}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    if-ne p1, v1, :cond_3

    new-array p1, v1, [B

    aput-byte v2, p1, v2

    invoke-virtual {p0, v8, p1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    if-ne v7, v1, :cond_2

    iget-object p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->rdsParser:Lcom/android/server/RDSParser;

    invoke-virtual {p1}, Lcom/android/server/RDSParser;->reset()V

    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startNotifyThread(Z)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->stopNotifyThread(Z)V

    :goto_0
    return v1

    :cond_3
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    return v2
.end method

.method public blacklist setRecordMode(Z)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setRecordMode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->getFirmwareVersion()Ljava/lang/String;

    const/4 v0, 0x2

    new-array v6, v0, [B

    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v7, 0x2

    const/16 v8, 0xfa0

    const/16 v2, 0xc0

    const/16 v3, 0xa2

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[GET PROTOCOL VERIONS] ret: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ascii: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    new-array v9, v0, [B

    fill-array-data v9, :array_0

    iget-object v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v10, 0x2

    const/16 v11, 0xfa0

    const/16 v5, 0xc0

    const/16 v6, 0xa2

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fm_state_cmd ret: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    new-array v0, v2, [B

    const/4 v4, 0x0

    aput-byte v2, v0, v4

    invoke-virtual {p0, v9, v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Do not record, FM is on playback mode, please turn off it first"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    new-array v9, v2, [B

    iget-object v4, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v10, 0x1

    const/16 v11, 0xfa0

    const/16 v5, 0xc0

    const/16 v6, 0xa1

    const/16 v7, 0xe

    move v8, p1

    invoke-virtual/range {v4 .. v11}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set_record_cmd ret: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public blacklist setRssiThreshold(I)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setRssiThreshold"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v6, v0, [B

    const/4 v0, -0x1

    const/4 v1, 0x0

    aput-byte v0, v6, v1

    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v7, 0x1

    const/16 v8, 0xfa0

    const/16 v2, 0xc0

    const/16 v3, 0xa1

    const/4 v4, 0x2

    move v5, p1

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "set_rssith_cmd ret: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", data: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ascii: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const-wide/16 v0, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    return-void
.end method

.method public blacklist setSeekDC(I)Z
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSeekDC"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v7, v0, [B

    const/4 v2, -0x1

    aput-byte v2, v7, v1

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v8, 0x1

    const/16 v9, 0xfa0

    const/16 v3, 0xc0

    const/16 v4, 0xa1

    const/16 v5, 0xb

    move v6, p1

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "set_dc_cmd ret: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ascii: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    const-wide/16 v2, 0xf

    invoke-virtual {p0, v2, v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    if-ne p1, v0, :cond_1

    new-array p1, v0, [B

    aput-byte v1, p1, v1

    invoke-virtual {p0, v7, p1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public blacklist setSeekQA(I)Z
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSeekQA"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v7, v0, [B

    const/4 v2, -0x1

    aput-byte v2, v7, v1

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v8, 0x1

    const/16 v9, 0xfa0

    const/16 v3, 0xc0

    const/16 v4, 0xa1

    const/16 v5, 0xc

    move v6, p1

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "set_qa_cmd ret: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ascii: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    const-wide/16 v2, 0xf

    invoke-virtual {p0, v2, v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    if-ne p1, v0, :cond_1

    new-array p1, v0, [B

    aput-byte v1, p1, v1

    invoke-virtual {p0, v7, p1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public blacklist setSnrThreshold(I)V
    .locals 0

    const-string/jumbo p0, "setSnrThreshold"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setSoundMode(I)Z
    .locals 10

    const-string/jumbo v0, "setSoundMode"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v7, v0, [B

    const/4 v2, -0x1

    aput-byte v2, v7, v1

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v8, 0x1

    const/16 v9, 0xfa0

    const/16 v3, 0xc0

    const/16 v4, 0xa1

    const/4 v5, 0x6

    move v6, p1

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sound_mode_cmd ret: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ascii: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    const-wide/16 v2, 0xf

    invoke-virtual {p0, v2, v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    if-ne p1, v0, :cond_1

    new-array p1, v0, [B

    aput-byte v1, p1, v1

    invoke-virtual {p0, v7, p1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public blacklist setStringTuningParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string/jumbo p0, "setStringTuningParameter"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setVolume(I)Z
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setVolume"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v7, v0, [B

    const/4 v2, -0x1

    aput-byte v2, v7, v1

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v8, 0x1

    const/16 v9, 0xfa0

    const/16 v3, 0xc0

    const/16 v4, 0xa1

    const/4 v5, 0x5

    move v6, p1

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "set_volume_cmd ret: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ascii: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->toASCII([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {p0, v2, v3}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->threadSleep(J)V

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->closeConnection()V

    if-ne p1, v0, :cond_1

    new-array p1, v0, [B

    aput-byte v1, p1, v1

    invoke-virtual {p0, v7, p1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startsWith([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public blacklist startNotifyThread(Z)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->openConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "Can\'t open connection for Notify Thread"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->isThreadRunning:Z

    invoke-virtual {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->initEndpointBes()V

    invoke-virtual {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->startNotifyThreadBes()V

    iput-boolean p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mSeekFreq:I

    iget-boolean p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsRDSEnabled:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->setRdsEnable(Z)Z

    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->restoreRdsForScan:Z

    :cond_1
    return v0
.end method

.method public blacklist stopNotifyThread(Z)V
    .locals 1

    const-string/jumbo v0, "stopNotifyThread"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    iget-boolean p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->restoreRdsForScan:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->setRdsEnable(Z)Z

    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->restoreRdsForScan:Z

    :cond_0
    iget-object p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsSeekTuneing:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsRDSEnabled:Z

    if-eqz p1, :cond_2

    :cond_1
    const-string p0, "Need to keep NotifyThread alive"

    invoke-static {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->stopNotifyThreadBes()V

    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->isThreadRunning:Z

    invoke-virtual {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->releaseInterfaceBes()V

    iget-object p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    :cond_3
    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsScanning:Z

    return-void
.end method

.method public blacklist stopSeek()Z
    .locals 1

    const-string/jumbo v0, "stopSeek"

    invoke-static {v0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mIsTuning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBesRichwave;->mNeedToStopSeek:Z

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->stopSeekExecute()Z

    move-result p0

    return p0
.end method

.method public blacklist tune(I)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/android/server/PlayerExternalChipsetBesRichwave;->seekTune(II)V

    return-void
.end method
