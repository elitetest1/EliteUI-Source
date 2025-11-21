.class public abstract Landroid/hardware/radio/RadioTuner;
.super Ljava/lang/Object;
.source "RadioTuner.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioTuner$Callback;,
        Landroid/hardware/radio/RadioTuner$TunerResultType;
    }
.end annotation


# static fields
.field public static final whitelist DIRECTION_DOWN:I = 0x1

.field public static final whitelist DIRECTION_UP:I = 0x0

.field public static final whitelist ERROR_BACKGROUND_SCAN_FAILED:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ERROR_BACKGROUND_SCAN_UNAVAILABLE:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ERROR_CANCELLED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ERROR_CONFIG:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ERROR_HARDWARE_FAILURE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ERROR_SCAN_TIMEOUT:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ERROR_SERVER_DIED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TUNER_RESULT_CANCELED:I = 0x6

.field public static final whitelist TUNER_RESULT_INTERNAL_ERROR:I = 0x1

.field public static final whitelist TUNER_RESULT_INVALID_ARGUMENTS:I = 0x2

.field public static final whitelist TUNER_RESULT_INVALID_STATE:I = 0x3

.field public static final whitelist TUNER_RESULT_NOT_SUPPORTED:I = 0x4

.field public static final whitelist TUNER_RESULT_OK:I = 0x0

.field public static final whitelist TUNER_RESULT_TIMEOUT:I = 0x5

.field public static final whitelist TUNER_RESULT_UNKNOWN_ERROR:I = 0x7


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist cancel()I
.end method

.method public abstract whitelist cancelAnnouncement()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist close()V
.end method

.method public abstract whitelist getConfiguration([Landroid/hardware/radio/RadioManager$BandConfig;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getDynamicProgramList(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/radio/ProgramList;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getMetadataImage(I)Landroid/graphics/Bitmap;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Getting metadata image must be implemented in child classes"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract whitelist getMute()Z
.end method

.method public whitelist getParameters(Ljava/util/List;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Getting parameters is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract whitelist getProgramInformation([Landroid/hardware/radio/RadioManager$ProgramInfo;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getProgramList(Ljava/util/Map;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist hasControl()Z
.end method

.method public abstract whitelist isAnalogForced()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist isAntennaConnected()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist isConfigFlagSet(I)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "isConfigFlagSet is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist isConfigFlagSupported(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract whitelist scan(IZ)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist seek(IZ)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Seeking is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract whitelist setAnalogForced(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist setConfigFlag(IZ)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Setting config flag is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract whitelist setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setMute(Z)I
.end method

.method public whitelist setParameters(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Setting parameters is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract whitelist startBackgroundScan()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist step(IZ)I
.end method

.method public abstract whitelist tune(II)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist tune(Landroid/hardware/radio/ProgramSelector;)V
.end method
