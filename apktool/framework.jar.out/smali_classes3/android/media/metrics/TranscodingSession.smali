.class public final Landroid/media/metrics/TranscodingSession;
.super Ljava/lang/Object;
.source "TranscodingSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private final blacklist mManager:Landroid/media/metrics/MediaMetricsManager;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/media/metrics/MediaMetricsManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/metrics/TranscodingSession;->mId:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/metrics/TranscodingSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    new-instance p2, Landroid/media/metrics/LogSessionId;

    invoke-direct {p2, p1}, Landroid/media/metrics/LogSessionId;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/media/metrics/TranscodingSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1

    iget-object v0, p0, Landroid/media/metrics/TranscodingSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object p0, p0, Landroid/media/metrics/TranscodingSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    invoke-virtual {p0}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/media/metrics/MediaMetricsManager;->releaseSessionId(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/media/metrics/TranscodingSession;

    iget-object p0, p0, Landroid/media/metrics/TranscodingSession;->mId:Ljava/lang/String;

    iget-object p1, p1, Landroid/media/metrics/TranscodingSession;->mId:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getSessionId()Landroid/media/metrics/LogSessionId;
    .locals 0

    iget-object p0, p0, Landroid/media/metrics/TranscodingSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/media/metrics/TranscodingSession;->mId:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
