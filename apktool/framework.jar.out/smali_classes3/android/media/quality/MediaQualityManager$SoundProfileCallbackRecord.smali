.class final Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;
.super Ljava/lang/Object;
.source "MediaQualityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/MediaQualityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SoundProfileCallbackRecord"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/media/quality/MediaQualityManager$SoundProfileCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;)Landroid/media/quality/MediaQualityManager$SoundProfileCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->mCallback:Landroid/media/quality/MediaQualityManager$SoundProfileCallback;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/quality/MediaQualityManager$SoundProfileCallback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->mCallback:Landroid/media/quality/MediaQualityManager$SoundProfileCallback;

    iput-object p2, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public blacklist getCallback()Landroid/media/quality/MediaQualityManager$SoundProfileCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->mCallback:Landroid/media/quality/MediaQualityManager$SoundProfileCallback;

    return-object p0
.end method

.method public blacklist postError(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$5;-><init>(Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist postParameterCapabilitiesChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/quality/ParameterCapability;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$4;-><init>(Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist postSoundProfileAdded(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .locals 2

    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$1;-><init>(Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist postSoundProfileRemoved(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .locals 2

    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$3;-><init>(Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist postSoundProfileUpdated(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .locals 2

    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$2;-><init>(Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
