.class public final Landroid/media/quality/MediaQualityManager;
.super Ljava/lang/Object;
.source "MediaQualityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;,
        Landroid/media/quality/MediaQualityManager$PictureProfileCallback;,
        Landroid/media/quality/MediaQualityManager$ProfileQueryParams;,
        Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;,
        Landroid/media/quality/MediaQualityManager$SoundProfileCallback;,
        Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;,
        Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;,
        Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;,
        Landroid/media/quality/MediaQualityManager$AmbientBacklightEventTypes;
    }
.end annotation


# static fields
.field public static final blacklist AMBIENT_BACKLIGHT_EVENT_DISABLED:I = 0x2

.field public static final blacklist AMBIENT_BACKLIGHT_EVENT_ENABLED:I = 0x1

.field public static final blacklist AMBIENT_BACKLIGHT_EVENT_INTERRUPTED:I = 0x4

.field public static final blacklist AMBIENT_BACKLIGHT_EVENT_METADATA:I = 0x3

.field public static final blacklist OPTION_INCLUDE_PARAMETERS:Ljava/lang/String; = "include_parameters"

.field private static final blacklist TAG:Ljava/lang/String; = "MediaQualityManager"


# instance fields
.field private final blacklist mAbCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAbLock:Ljava/lang/Object;

.field private final blacklist mApListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mApLock:Ljava/lang/Object;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mPpCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPpLock:Ljava/lang/Object;

.field private final blacklist mService:Landroid/media/quality/IMediaQualityManager;

.field private final blacklist mSpCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSpLock:Ljava/lang/Object;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAbCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mAbCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAbLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mAbLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmApListenerRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mApListenerRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPpCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mPpCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPpLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mPpLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mSpCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mSpLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/media/quality/IMediaQualityManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mPpLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mSpLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mAbLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mPpCallbackRecords:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mSpCallbackRecords:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mAbCallbackRecords:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApListenerRecords:Ljava/util/List;

    iput-object p1, p0, Landroid/media/quality/MediaQualityManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    iput-object p2, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    new-instance p1, Landroid/media/quality/MediaQualityManager$1;

    invoke-direct {p1, p0}, Landroid/media/quality/MediaQualityManager$1;-><init>(Landroid/media/quality/MediaQualityManager;)V

    new-instance v0, Landroid/media/quality/MediaQualityManager$2;

    invoke-direct {v0, p0}, Landroid/media/quality/MediaQualityManager$2;-><init>(Landroid/media/quality/MediaQualityManager;)V

    new-instance v1, Landroid/media/quality/MediaQualityManager$3;

    invoke-direct {v1, p0}, Landroid/media/quality/MediaQualityManager$3;-><init>(Landroid/media/quality/MediaQualityManager;)V

    new-instance v2, Landroid/media/quality/MediaQualityManager$4;

    invoke-direct {v2, p0}, Landroid/media/quality/MediaQualityManager$4;-><init>(Landroid/media/quality/MediaQualityManager;)V

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2, p1}, Landroid/media/quality/IMediaQualityManager;->registerPictureProfileCallback(Landroid/media/quality/IPictureProfileCallback;)V

    invoke-interface {p2, v0}, Landroid/media/quality/IMediaQualityManager;->registerSoundProfileCallback(Landroid/media/quality/ISoundProfileCallback;)V

    invoke-interface {p2, v1}, Landroid/media/quality/IMediaQualityManager;->registerAmbientBacklightCallback(Landroid/media/quality/IAmbientBacklightCallback;)V

    invoke-interface {p2, v2}, Landroid/media/quality/IMediaQualityManager;->registerActiveProcessingPictureListener(Landroid/media/quality/IActiveProcessingPictureListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist addActiveProcessingPictureListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/media/quality/ActiveProcessingPicture;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mApListenerRecords:Ljava/util/List;

    new-instance v1, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist addGlobalActiveProcessingPictureListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/media/quality/ActiveProcessingPicture;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mApListenerRecords:Ljava/util/List;

    new-instance v1, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;

    const/4 v2, 0x1

    invoke-direct {v1, p2, p1, v2}, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist createPictureProfile(Landroid/media/quality/PictureProfile;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/media/quality/IMediaQualityManager;->createPictureProfile(Landroid/media/quality/PictureProfile;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist createSoundProfile(Landroid/media/quality/SoundProfile;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/media/quality/IMediaQualityManager;->createSoundProfile(Landroid/media/quality/SoundProfile;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getAvailablePictureProfiles(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/quality/MediaQualityManager$ProfileQueryParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/PictureProfile;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$fgetmParametersIncluded(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/media/quality/IMediaQualityManager;->getAvailablePictureProfiles(ZI)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getAvailableSoundProfiles(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/quality/MediaQualityManager$ProfileQueryParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/SoundProfile;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$fgetmParametersIncluded(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/media/quality/IMediaQualityManager;->getAvailableSoundProfiles(ZI)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getParameterCapabilities(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/quality/ParameterCapability;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/media/quality/IMediaQualityManager;->getParameterCapabilities(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getPictureProfile(ILjava/lang/String;Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/media/quality/PictureProfile;
    .locals 1

    if-eqz p3, :cond_1

    :try_start_0
    invoke-static {p3}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$fgetmParametersIncluded(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p2, p3, p0}, Landroid/media/quality/IMediaQualityManager;->getPictureProfile(ILjava/lang/String;ZI)Landroid/media/quality/PictureProfile;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getPictureProfileAllowList()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/media/quality/IMediaQualityManager;->getPictureProfileAllowList(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist getPictureProfileForTvInput(Ljava/lang/String;)J
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/media/quality/IMediaQualityManager;->getPictureProfileForTvInput(Ljava/lang/String;I)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist getPictureProfileHandle([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/PictureProfileHandle;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/media/quality/IMediaQualityManager;->getPictureProfileHandle([Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getPictureProfilePackageNames()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/media/quality/IMediaQualityManager;->getPictureProfilePackageNames(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getPictureProfilesByPackage(Ljava/lang/String;Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/media/quality/MediaQualityManager$ProfileQueryParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/PictureProfile;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p2}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$fgetmParametersIncluded(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p2, p0}, Landroid/media/quality/IMediaQualityManager;->getPictureProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getSoundProfile(ILjava/lang/String;Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/media/quality/SoundProfile;
    .locals 1

    if-eqz p3, :cond_1

    :try_start_0
    invoke-static {p3}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$fgetmParametersIncluded(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p2, p3, p0}, Landroid/media/quality/IMediaQualityManager;->getSoundProfile(ILjava/lang/String;ZI)Landroid/media/quality/SoundProfile;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getSoundProfileAllowList()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/media/quality/IMediaQualityManager;->getSoundProfileAllowList(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist getSoundProfileHandle([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/SoundProfileHandle;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/media/quality/IMediaQualityManager;->getSoundProfileHandle([Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getSoundProfilePackageNames()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/media/quality/IMediaQualityManager;->getSoundProfilePackageNames(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getSoundProfilesByPackage(Ljava/lang/String;Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/media/quality/MediaQualityManager$ProfileQueryParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/SoundProfile;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p2}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$fgetmParametersIncluded(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p2, p0}, Landroid/media/quality/IMediaQualityManager;->getSoundProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist isAmbientBacklightEnabled()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/media/quality/IMediaQualityManager;->isAmbientBacklightEnabled(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist isAutoPictureQualityEnabled()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/media/quality/IMediaQualityManager;->isAutoPictureQualityEnabled(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist isAutoSoundQualityEnabled()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/media/quality/IMediaQualityManager;->isAutoSoundQualityEnabled(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist isSuperResolutionEnabled()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/media/quality/IMediaQualityManager;->isSuperResolutionEnabled(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist isSupported()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/media/quality/IMediaQualityManager;->isSupported(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist registerAmbientBacklightCallback(Ljava/util/concurrent/Executor;Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;)V
    .locals 2

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mAbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mAbCallbackRecords:Ljava/util/List;

    new-instance v1, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;

    invoke-direct {v1, p2, p1}, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;-><init>(Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist registerPictureProfileCallback(Ljava/util/concurrent/Executor;Landroid/media/quality/MediaQualityManager$PictureProfileCallback;)V
    .locals 2

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mPpLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mPpCallbackRecords:Ljava/util/List;

    new-instance v1, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;

    invoke-direct {v1, p2, p1}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;-><init>(Landroid/media/quality/MediaQualityManager$PictureProfileCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist registerSoundProfileCallback(Ljava/util/concurrent/Executor;Landroid/media/quality/MediaQualityManager$SoundProfileCallback;)V
    .locals 2

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mSpLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mSpCallbackRecords:Ljava/util/List;

    new-instance v1, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;

    invoke-direct {v1, p2, p1}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;-><init>(Landroid/media/quality/MediaQualityManager$SoundProfileCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist removeActiveProcessingPictureListener(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/media/quality/ActiveProcessingPicture;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mApListenerRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;

    invoke-virtual {v1}, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;->getListener()Ljava/util/function/Consumer;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist removePictureProfile(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/media/quality/IMediaQualityManager;->removePictureProfile(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist removeSoundProfile(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/media/quality/IMediaQualityManager;->removeSoundProfile(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist setAmbientBacklightEnabled(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/media/quality/IMediaQualityManager;->setAmbientBacklightEnabled(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist setAmbientBacklightSettings(Landroid/media/quality/AmbientBacklightSettings;)V
    .locals 1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/media/quality/IMediaQualityManager;->setAmbientBacklightSettings(Landroid/media/quality/AmbientBacklightSettings;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist setAutoPictureQualityEnabled(Z)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/media/quality/IMediaQualityManager;->setAutoPictureQualityEnabled(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist setAutoSoundQualityEnabled(Z)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/media/quality/IMediaQualityManager;->setAutoSoundQualityEnabled(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist setDefaultPictureProfile(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/media/quality/IMediaQualityManager;->setDefaultPictureProfile(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist setDefaultSoundProfile(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/media/quality/IMediaQualityManager;->setDefaultSoundProfile(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist setPictureProfileAllowList(Ljava/util/List;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/media/quality/IMediaQualityManager;->setPictureProfileAllowList(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist setSoundProfileAllowList(Ljava/util/List;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/media/quality/IMediaQualityManager;->setSoundProfileAllowList(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist setSuperResolutionEnabled(Z)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/media/quality/IMediaQualityManager;->setSuperResolutionEnabled(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist unregisterAmbientBacklightCallback(Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mAbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mAbCallbackRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;

    invoke-virtual {v1}, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;->getCallback()Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist unregisterPictureProfileCallback(Landroid/media/quality/MediaQualityManager$PictureProfileCallback;)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mPpLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mPpCallbackRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;

    invoke-virtual {v1}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->getCallback()Landroid/media/quality/MediaQualityManager$PictureProfileCallback;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist unregisterSoundProfileCallback(Landroid/media/quality/MediaQualityManager$SoundProfileCallback;)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mSpLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mSpCallbackRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;

    invoke-virtual {v1}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->getCallback()Landroid/media/quality/MediaQualityManager$SoundProfileCallback;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist updatePictureProfile(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p2, p0}, Landroid/media/quality/IMediaQualityManager;->updatePictureProfile(Ljava/lang/String;Landroid/media/quality/PictureProfile;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist updateSoundProfile(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p1, p2, p0}, Landroid/media/quality/IMediaQualityManager;->updateSoundProfile(Ljava/lang/String;Landroid/media/quality/SoundProfile;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
