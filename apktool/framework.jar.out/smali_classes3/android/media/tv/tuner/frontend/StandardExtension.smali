.class public final Landroid/media/tv/tuner/frontend/StandardExtension;
.super Ljava/lang/Object;
.source "StandardExtension.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mDvbsStandardExtension:I

.field private final blacklist mDvbtStandardExtension:I


# direct methods
.method private constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/StandardExtension;->mDvbsStandardExtension:I

    iput p2, p0, Landroid/media/tv/tuner/frontend/StandardExtension;->mDvbtStandardExtension:I

    return-void
.end method


# virtual methods
.method public whitelist getDvbsStandardExtension()I
    .locals 1

    iget p0, p0, Landroid/media/tv/tuner/frontend/StandardExtension;->mDvbsStandardExtension:I

    if-eqz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No DVB-S standard transition"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getDvbtStandardExtension()I
    .locals 1

    iget p0, p0, Landroid/media/tv/tuner/frontend/StandardExtension;->mDvbtStandardExtension:I

    if-eqz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No DVB-T standard transition"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
