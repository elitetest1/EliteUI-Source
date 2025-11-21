.class abstract Landroid/service/voice/HotwordAudioStream$BaseBuilder;
.super Ljava/lang/Object;
.source "HotwordAudioStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/HotwordAudioStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseBuilder"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist setInitialAudio([B)Landroid/service/voice/HotwordAudioStream$Builder;
    .locals 4

    const-string/jumbo v0, "value should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/service/voice/HotwordAudioStream$Builder;

    invoke-static {p0}, Landroid/service/voice/HotwordAudioStream$Builder;->-$$Nest$fgetmBuilderFieldsSet(Landroid/service/voice/HotwordAudioStream$Builder;)J

    move-result-wide v0

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroid/service/voice/HotwordAudioStream$Builder;->-$$Nest$fputmBuilderFieldsSet(Landroid/service/voice/HotwordAudioStream$Builder;J)V

    invoke-static {p0, p1}, Landroid/service/voice/HotwordAudioStream$Builder;->-$$Nest$fputmInitialAudio(Landroid/service/voice/HotwordAudioStream$Builder;[B)V

    return-object p0
.end method
