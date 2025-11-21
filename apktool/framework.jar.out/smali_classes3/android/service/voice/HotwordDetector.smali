.class public interface abstract Landroid/service/voice/HotwordDetector;
.super Ljava/lang/Object;
.source "HotwordDetector.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/HotwordDetector$Callback;
    }
.end annotation


# static fields
.field public static final blacklist DETECTOR_TYPE_NORMAL:I = 0x0

.field public static final blacklist DETECTOR_TYPE_TRUSTED_HOTWORD_DSP:I = 0x1

.field public static final blacklist DETECTOR_TYPE_TRUSTED_HOTWORD_SOFTWARE:I = 0x2

.field public static final blacklist DETECTOR_TYPE_VISUAL_QUERY_DETECTOR:I = 0x3


# direct methods
.method public static blacklist detectorTypeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "visual_query_detector"

    return-object p0

    :cond_1
    const-string/jumbo p0, "trusted_hotword_software"

    return-object p0

    :cond_2
    const-string/jumbo p0, "trusted_hotword_dsp"

    return-object p0

    :cond_3
    const-string/jumbo p0, "normal"

    return-object p0
.end method


# virtual methods
.method public whitelist destroy()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented. Must override in a subclass."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not implemented. Must override in a subclass."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist isUsingSandboxedDetectionService()Z
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented. Must override in a subclass."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract whitelist startRecognition()Z
.end method

.method public abstract whitelist startRecognition(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;)Z
.end method

.method public abstract whitelist stopRecognition()Z
.end method

.method public abstract whitelist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
.end method
