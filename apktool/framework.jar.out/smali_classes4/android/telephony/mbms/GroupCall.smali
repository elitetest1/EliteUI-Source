.class public Landroid/telephony/mbms/GroupCall;
.super Ljava/lang/Object;
.source "GroupCall.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/GroupCall$GroupCallStateChangeReason;,
        Landroid/telephony/mbms/GroupCall$GroupCallState;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MbmsGroupCall"

.field public static final whitelist REASON_BY_USER_REQUEST:I = 0x1

.field public static final whitelist REASON_FREQUENCY_CONFLICT:I = 0x3

.field public static final whitelist REASON_LEFT_MBMS_BROADCAST_AREA:I = 0x6

.field public static final whitelist REASON_NONE:I = 0x0

.field public static final whitelist REASON_NOT_CONNECTED_TO_HOMECARRIER_LTE:I = 0x5

.field public static final whitelist REASON_OUT_OF_MEMORY:I = 0x4

.field public static final whitelist STATE_STALLED:I = 0x3

.field public static final whitelist STATE_STARTED:I = 0x2

.field public static final whitelist STATE_STOPPED:I = 0x1


# instance fields
.field private final blacklist mCallback:Landroid/telephony/mbms/InternalGroupCallCallback;

.field private final blacklist mParentSession:Landroid/telephony/MbmsGroupCallSession;

.field private blacklist mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

.field private final blacklist mSubscriptionId:I

.field private final blacklist mTmgi:J


# direct methods
.method public constructor blacklist <init>(ILandroid/telephony/mbms/vendor/IMbmsGroupCallService;Landroid/telephony/MbmsGroupCallSession;JLandroid/telephony/mbms/InternalGroupCallCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/mbms/GroupCall;->mSubscriptionId:I

    iput-object p3, p0, Landroid/telephony/mbms/GroupCall;->mParentSession:Landroid/telephony/MbmsGroupCallSession;

    iput-object p2, p0, Landroid/telephony/mbms/GroupCall;->mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    iput-wide p4, p0, Landroid/telephony/mbms/GroupCall;->mTmgi:J

    iput-object p6, p0, Landroid/telephony/mbms/GroupCall;->mCallback:Landroid/telephony/mbms/InternalGroupCallCallback;

    return-void
.end method

.method private blacklist sendErrorToApp(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/GroupCall;->mCallback:Landroid/telephony/mbms/InternalGroupCallCallback;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/mbms/InternalGroupCallCallback;->onError(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 4

    iget-object v0, p0, Landroid/telephony/mbms/GroupCall;->mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    if-eqz v0, :cond_0

    :try_start_0
    iget v1, p0, Landroid/telephony/mbms/GroupCall;->mSubscriptionId:I

    iget-wide v2, p0, Landroid/telephony/mbms/GroupCall;->mTmgi:J

    invoke-interface {v0, v1, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;->stopGroupCall(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/telephony/mbms/GroupCall;->mParentSession:Landroid/telephony/MbmsGroupCallSession;

    invoke-virtual {v0, p0}, Landroid/telephony/MbmsGroupCallSession;->onGroupCallStopped(Landroid/telephony/mbms/GroupCall;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v0, "MbmsGroupCall"

    const-string v1, "Remote process died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/mbms/GroupCall;->mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/telephony/mbms/GroupCall;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Landroid/telephony/mbms/GroupCall;->mParentSession:Landroid/telephony/MbmsGroupCallSession;

    invoke-virtual {v0, p0}, Landroid/telephony/MbmsGroupCallSession;->onGroupCallStopped(Landroid/telephony/mbms/GroupCall;)V

    return-void

    :goto_0
    iget-object v1, p0, Landroid/telephony/mbms/GroupCall;->mParentSession:Landroid/telephony/MbmsGroupCallSession;

    invoke-virtual {v1, p0}, Landroid/telephony/MbmsGroupCallSession;->onGroupCallStopped(Landroid/telephony/mbms/GroupCall;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No group call service attached"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getCallback()Landroid/telephony/mbms/InternalGroupCallCallback;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/GroupCall;->mCallback:Landroid/telephony/mbms/InternalGroupCallCallback;

    return-object p0
.end method

.method public whitelist getTmgi()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/mbms/GroupCall;->mTmgi:J

    return-wide v0
.end method

.method public whitelist updateGroupCall(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/mbms/GroupCall;->mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    if-eqz v0, :cond_0

    :try_start_0
    iget v1, p0, Landroid/telephony/mbms/GroupCall;->mSubscriptionId:I

    iget-wide v2, p0, Landroid/telephony/mbms/GroupCall;->mTmgi:J

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;->updateGroupCall(IJLjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Landroid/telephony/mbms/GroupCall;->mParentSession:Landroid/telephony/MbmsGroupCallSession;

    invoke-virtual {p1, p0}, Landroid/telephony/MbmsGroupCallSession;->onGroupCallStopped(Landroid/telephony/mbms/GroupCall;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string p1, "MbmsGroupCall"

    const-string p2, "Remote process died"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/telephony/mbms/GroupCall;->mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Landroid/telephony/mbms/GroupCall;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Landroid/telephony/mbms/GroupCall;->mParentSession:Landroid/telephony/MbmsGroupCallSession;

    invoke-virtual {p1, p0}, Landroid/telephony/MbmsGroupCallSession;->onGroupCallStopped(Landroid/telephony/mbms/GroupCall;)V

    return-void

    :goto_0
    iget-object p2, p0, Landroid/telephony/mbms/GroupCall;->mParentSession:Landroid/telephony/MbmsGroupCallSession;

    invoke-virtual {p2, p0}, Landroid/telephony/MbmsGroupCallSession;->onGroupCallStopped(Landroid/telephony/mbms/GroupCall;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No group call service attached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
