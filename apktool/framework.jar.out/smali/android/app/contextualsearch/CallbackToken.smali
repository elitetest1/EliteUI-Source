.class public final Landroid/app/contextualsearch/CallbackToken;
.super Ljava/lang/Object;
.source "CallbackToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/contextualsearch/CallbackToken;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = true

.field private static final blacklist TAG:Ljava/lang/String; = "CallbackToken"


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mToken:Landroid/os/IBinder;

.field private blacklist mTokenUsed:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/contextualsearch/CallbackToken;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/contextualsearch/CallbackToken$1;

    invoke-direct {v0}, Landroid/app/contextualsearch/CallbackToken$1;-><init>()V

    sput-object v0, Landroid/app/contextualsearch/CallbackToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/contextualsearch/CallbackToken;->mTokenUsed:Z

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/contextualsearch/CallbackToken;->mTokenUsed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/contextualsearch/CallbackToken-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/contextualsearch/CallbackToken;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist markUsedLocked()Z
    .locals 2

    iget-boolean v0, p0, Landroid/app/contextualsearch/CallbackToken;->mTokenUsed:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/contextualsearch/CallbackToken;->mTokenUsed:Z

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getContextualSearchState(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/contextualsearch/ContextualSearchState;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/app/contextualsearch/CallbackToken;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getContextualSearchState for token:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/app/contextualsearch/CallbackToken;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/app/contextualsearch/CallbackToken;->markUsedLocked()Z

    move-result v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string p1, "Token already used."

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :try_start_1
    const-string v1, "contextual_search"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/contextualsearch/IContextualSearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/contextualsearch/IContextualSearchManager;

    move-result-object v1

    new-instance v2, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;

    invoke-direct {v2, p1, p2}, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, p0, v2}, Landroid/app/contextualsearch/IContextualSearchManager;->getContextualSearchState(Landroid/os/IBinder;Landroid/app/contextualsearch/IContextualSearchCallback;)V

    return-void

    :cond_1
    const-string p0, "Failed to getContextualSearchState. Service null."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Landroid/app/contextualsearch/CallbackToken;->TAG:Ljava/lang/String;

    const-string p2, "Failed to call getContextualSearchState"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
