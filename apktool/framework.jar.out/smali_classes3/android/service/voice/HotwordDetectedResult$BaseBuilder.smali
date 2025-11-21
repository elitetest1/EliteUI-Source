.class abstract Landroid/service/voice/HotwordDetectedResult$BaseBuilder;
.super Ljava/lang/Object;
.source "HotwordDetectedResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/HotwordDetectedResult;
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
.method public blacklist setAudioStreams(Ljava/util/List;)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/voice/HotwordAudioStream;",
            ">;)",
            "Landroid/service/voice/HotwordDetectedResult$Builder;"
        }
    .end annotation

    const-string/jumbo v0, "value should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/service/voice/HotwordDetectedResult$Builder;

    invoke-static {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->-$$Nest$fgetmBuilderFieldsSet(Landroid/service/voice/HotwordDetectedResult$Builder;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->-$$Nest$fputmBuilderFieldsSet(Landroid/service/voice/HotwordDetectedResult$Builder;J)V

    invoke-static {p1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/service/voice/HotwordDetectedResult$Builder;->-$$Nest$fputmAudioStreams(Landroid/service/voice/HotwordDetectedResult$Builder;Ljava/util/List;)V

    return-object p0
.end method
