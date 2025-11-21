.class public final Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats;
.super Ljava/lang/Object;
.source "MediaRoute2ProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRoute2ProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaStreamsFormats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAudioFormat:Landroid/media/AudioFormat;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAudioFormat(Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats;)Landroid/media/AudioFormat;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats;->mAudioFormat:Landroid/media/AudioFormat;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats$Builder;->-$$Nest$fgetmAudioFormat(Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats$Builder;)Landroid/media/AudioFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats;->mAudioFormat:Landroid/media/AudioFormat;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats$Builder;Landroid/media/MediaRoute2ProviderService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats;-><init>(Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist getAudioFormat()Landroid/media/AudioFormat;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService$MediaStreamsFormats;->mAudioFormat:Landroid/media/AudioFormat;

    return-object p0
.end method
