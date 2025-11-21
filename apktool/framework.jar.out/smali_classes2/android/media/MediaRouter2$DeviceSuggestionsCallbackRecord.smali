.class final Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceSuggestionsCallbackRecord"
.end annotation


# instance fields
.field public final blacklist mDeviceSuggestionsCallback:Landroid/media/MediaRouter2$DeviceSuggestionsCallback;

.field public final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$DeviceSuggestionsCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;->mDeviceSuggestionsCallback:Landroid/media/MediaRouter2$DeviceSuggestionsCallback;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;->mDeviceSuggestionsCallback:Landroid/media/MediaRouter2$DeviceSuggestionsCallback;

    check-cast p1, Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;

    iget-object p1, p1, Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;->mDeviceSuggestionsCallback:Landroid/media/MediaRouter2$DeviceSuggestionsCallback;

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;->mDeviceSuggestionsCallback:Landroid/media/MediaRouter2$DeviceSuggestionsCallback;

    invoke-interface {p0}, Landroid/media/MediaRouter2$DeviceSuggestionsCallback;->hashCode()I

    move-result p0

    return p0
.end method
