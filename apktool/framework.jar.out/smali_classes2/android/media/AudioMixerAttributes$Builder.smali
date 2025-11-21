.class public final Landroid/media/AudioMixerAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioMixerAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioMixerAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mFormat:Landroid/media/AudioFormat;

.field private blacklist mMixerBehavior:I


# direct methods
.method public constructor whitelist <init>(Landroid/media/AudioFormat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioMixerAttributes$Builder;->mMixerBehavior:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/media/AudioMixerAttributes$Builder;->mFormat:Landroid/media/AudioFormat;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/AudioMixerAttributes;
    .locals 2

    new-instance v0, Landroid/media/AudioMixerAttributes;

    iget-object v1, p0, Landroid/media/AudioMixerAttributes$Builder;->mFormat:Landroid/media/AudioFormat;

    iget p0, p0, Landroid/media/AudioMixerAttributes$Builder;->mMixerBehavior:I

    invoke-direct {v0, v1, p0}, Landroid/media/AudioMixerAttributes;-><init>(Landroid/media/AudioFormat;I)V

    return-object v0
.end method

.method public whitelist setMixerBehavior(I)Landroid/media/AudioMixerAttributes$Builder;
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid mixer behavior "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/AudioMixerAttributes$Builder;->mMixerBehavior:I

    return-object p0
.end method
