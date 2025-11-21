.class public final Landroid/hardware/face/HidlFaceSensorConfig;
.super Landroid/hardware/biometrics/face/SensorProps;
.source "HidlFaceSensorConfig.java"


# instance fields
.field private blacklist mModality:I

.field private blacklist mSensorId:I

.field private blacklist mStrength:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/biometrics/face/SensorProps;-><init>()V

    return-void
.end method

.method private blacklist authenticatorStrengthToPropertyStrength(I)B
    .locals 2

    const/16 p0, 0xf

    if-eq p1, p0, :cond_2

    const/16 p0, 0xff

    if-eq p1, p0, :cond_1

    const/16 p0, 0xfff

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown strength: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0
.end method

.method private blacklist mapHidlToAidlFaceSensorConfigurations(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/hardware/biometrics/common/CommonProps;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/CommonProps;-><init>()V

    iput-object v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget-object v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget v1, p0, Landroid/hardware/face/HidlFaceSensorConfig;->mSensorId:I

    iput v1, v0, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    iget-object v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget v1, p0, Landroid/hardware/face/HidlFaceSensorConfig;->mStrength:I

    invoke-direct {p0, v1}, Landroid/hardware/face/HidlFaceSensorConfig;->authenticatorStrengthToPropertyStrength(I)B

    move-result v1

    iput-byte v1, v0, Landroid/hardware/biometrics/common/CommonProps;->sensorStrength:B

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->halControlsPreview:Z

    iget-object v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10e00c5

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, v0, Landroid/hardware/biometrics/common/CommonProps;->maxEnrollmentsPerUser:I

    iget-object p1, p0, Landroid/hardware/face/HidlFaceSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/hardware/biometrics/common/CommonProps;->componentInfo:[Landroid/hardware/biometrics/common/ComponentInfo;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/face/HidlFaceSensorConfig;->supportsDetectInteraction:Z

    return-void
.end method


# virtual methods
.method public blacklist getModality()I
    .locals 0

    iget p0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->mModality:I

    return p0
.end method

.method public blacklist parse(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->mSensorId:I

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->mModality:I

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/face/HidlFaceSensorConfig;->mStrength:I

    invoke-direct {p0, p2}, Landroid/hardware/face/HidlFaceSensorConfig;->mapHidlToAidlFaceSensorConfigurations(Landroid/content/Context;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
