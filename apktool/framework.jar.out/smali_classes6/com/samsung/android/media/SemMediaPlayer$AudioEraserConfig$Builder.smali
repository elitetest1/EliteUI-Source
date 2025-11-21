.class public final Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig$Builder;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mMusic:F

.field private blacklist mOthers:F

.field private blacklist mVoice:F

.field private blacklist mWind:F


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig$Builder;->mVoice:F

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig$Builder;->mMusic:F

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig$Builder;->mWind:F

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig$Builder;->mOthers:F

    return-void
.end method


# virtual methods
.method public whitelist build()Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig;
    .locals 4

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig;

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig$Builder;->mVoice:F

    iget v2, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig$Builder;->mMusic:F

    iget v3, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig$Builder;->mWind:F

    iget p0, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig$Builder;->mOthers:F

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig;-><init>(FFFF)V

    return-object v0
.end method

.method public whitelist setMusicRate(F)Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig$Builder;->mMusic:F

    return-object p0
.end method

.method public whitelist setOthersRate(F)Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig$Builder;->mOthers:F

    return-object p0
.end method

.method public whitelist setVoiceRate(F)Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig$Builder;->mVoice:F

    return-object p0
.end method

.method public whitelist setWindRate(F)Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioEraserConfig$Builder;->mWind:F

    return-object p0
.end method
