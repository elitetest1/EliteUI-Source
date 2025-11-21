.class public Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;
.super Landroid/media/tv/tuner/frontend/FrontendSettings;
.source "IsdbtFrontendSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$TimeInterleaveMode;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$PartialReceptionFlag;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Bandwidth;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Mode;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Modulation;
    }
.end annotation


# static fields
.field public static final whitelist BANDWIDTH_6MHZ:I = 0x8

.field public static final whitelist BANDWIDTH_7MHZ:I = 0x4

.field public static final whitelist BANDWIDTH_8MHZ:I = 0x2

.field public static final whitelist BANDWIDTH_AUTO:I = 0x1

.field public static final whitelist BANDWIDTH_UNDEFINED:I = 0x0

.field public static final whitelist MODE_1:I = 0x2

.field public static final whitelist MODE_2:I = 0x4

.field public static final whitelist MODE_3:I = 0x8

.field public static final whitelist MODE_AUTO:I = 0x1

.field public static final whitelist MODE_UNDEFINED:I = 0x0

.field public static final whitelist MODULATION_AUTO:I = 0x1

.field public static final whitelist MODULATION_MOD_16QAM:I = 0x8

.field public static final whitelist MODULATION_MOD_64QAM:I = 0x10

.field public static final whitelist MODULATION_MOD_DQPSK:I = 0x2

.field public static final whitelist MODULATION_MOD_QPSK:I = 0x4

.field public static final whitelist MODULATION_UNDEFINED:I = 0x0

.field public static final whitelist PARTIAL_RECEPTION_FLAG_FALSE:I = 0x2

.field public static final whitelist PARTIAL_RECEPTION_FLAG_TRUE:I = 0x4

.field public static final whitelist PARTIAL_RECEPTION_FLAG_UNDEFINED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "IsdbtFrontendSettings"

.field public static final whitelist TIME_INTERLEAVE_MODE_1_0:I = 0x2

.field public static final whitelist TIME_INTERLEAVE_MODE_1_16:I = 0x10

.field public static final whitelist TIME_INTERLEAVE_MODE_1_4:I = 0x4

.field public static final whitelist TIME_INTERLEAVE_MODE_1_8:I = 0x8

.field public static final whitelist TIME_INTERLEAVE_MODE_2_0:I = 0x20

.field public static final whitelist TIME_INTERLEAVE_MODE_2_2:I = 0x40

.field public static final whitelist TIME_INTERLEAVE_MODE_2_4:I = 0x80

.field public static final whitelist TIME_INTERLEAVE_MODE_2_8:I = 0x100

.field public static final whitelist TIME_INTERLEAVE_MODE_3_0:I = 0x200

.field public static final whitelist TIME_INTERLEAVE_MODE_3_1:I = 0x400

.field public static final whitelist TIME_INTERLEAVE_MODE_3_2:I = 0x800

.field public static final whitelist TIME_INTERLEAVE_MODE_3_4:I = 0x1000

.field public static final whitelist TIME_INTERLEAVE_MODE_AUTO:I = 0x1

.field public static final whitelist TIME_INTERLEAVE_MODE_UNDEFINED:I


# instance fields
.field private final blacklist mBandwidth:I

.field private final blacklist mGuardInterval:I

.field private final blacklist mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

.field private final blacklist mMode:I

.field private final blacklist mPartialReceptionFlag:I

.field private final blacklist mServiceAreaId:I


# direct methods
.method private constructor blacklist <init>(JIIII[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/frontend/FrontendSettings;-><init>(J)V

    iput p3, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mBandwidth:I

    iput p4, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mMode:I

    iput p5, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mGuardInterval:I

    iput p6, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mServiceAreaId:I

    array-length p1, p7

    new-array p1, p1, [Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iput-object p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    const/4 p1, 0x0

    :goto_0
    array-length p2, p7

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    aget-object p3, p7, p1

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput p8, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mPartialReceptionFlag:I

    return-void
.end method

.method synthetic constructor blacklist <init>(JIIII[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;ILandroid/media/tv/tuner/frontend/IsdbtFrontendSettings-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;-><init>(JIIII[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;I)V

    return-void
.end method

.method public static whitelist builder()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .locals 2

    new-instance v0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings-IA;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getBandwidth()I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mBandwidth:I

    return p0
.end method

.method public whitelist getCodeRate()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x20000

    invoke-static {v0}, Landroid/media/tv/tuner/TunerVersionChecker;->isHigherOrEqualVersionTo(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    array-length v0, p0

    if-lez v0, :cond_1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->getCodeRate()I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public whitelist getGuardInterval()I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mGuardInterval:I

    return p0
.end method

.method public whitelist getLayerSettings()[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    return-object p0
.end method

.method public whitelist getMode()I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mMode:I

    return p0
.end method

.method public whitelist getModulation()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x20000

    invoke-static {v0}, Landroid/media/tv/tuner/TunerVersionChecker;->isHigherOrEqualVersionTo(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    array-length v0, p0

    if-lez v0, :cond_1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->getModulation()I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public whitelist getPartialReceptionFlag()I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mPartialReceptionFlag:I

    return p0
.end method

.method public whitelist getServiceAreaId()I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mServiceAreaId:I

    return p0
.end method

.method public whitelist getType()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method
