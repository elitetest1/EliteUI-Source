.class public final Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioEraserConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig$Builder;
    }
.end annotation


# instance fields
.field private blacklist mMusic:F

.field private blacklist mOthers:F

.field private blacklist mVoice:F

.field private blacklist mWind:F


# direct methods
.method constructor blacklist <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig;->mVoice:F

    iput p2, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig;->mMusic:F

    iput p3, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig;->mWind:F

    iput p4, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig;->mOthers:F

    return-void
.end method


# virtual methods
.method public whitelist getMusicRate()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig;->mMusic:F

    return p0
.end method

.method public whitelist getOthersRate()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig;->mOthers:F

    return p0
.end method

.method public whitelist getVoiceRate()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig;->mVoice:F

    return p0
.end method

.method public whitelist getWindRate()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig;->mWind:F

    return p0
.end method
