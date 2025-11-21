.class public final Landroid/view/ContentRecordingSession;
.super Ljava/lang/Object;
.source "ContentRecordingSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ContentRecordingSession$Builder;,
        Landroid/view/ContentRecordingSession$TargetUid;,
        Landroid/view/ContentRecordingSession$RecordContent;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/ContentRecordingSession;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist RECORD_CONTENT_BELOW_OVERLAY:I = 0x2

.field public static final blacklist RECORD_CONTENT_DISPLAY:I = 0x0

.field public static final blacklist RECORD_CONTENT_TASK:I = 0x1

.field public static final blacklist TARGET_UID_FULL_SCREEN:I = -0x1

.field public static final blacklist TARGET_UID_UNKNOWN:I = -0x2

.field public static final blacklist TASK_ID_UNKNOWN:I = -0x1


# instance fields
.field private blacklist mContentToRecord:I

.field private blacklist mDisplayToRecord:I

.field private blacklist mRecordingOwnerUid:I

.field private blacklist mTargetUid:I

.field private blacklist mTaskId:I

.field private blacklist mTokenToRecord:Landroid/os/IBinder;

.field private blacklist mVirtualDisplayId:I

.field private blacklist mWaitingForConsent:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/ContentRecordingSession$1;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession$1;-><init>()V

    sput-object v0, Landroid/view/ContentRecordingSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    iput v0, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    iput v0, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    iput-boolean v1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    const/4 v0, -0x2

    iput v0, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    return-void
.end method

.method constructor blacklist <init>(IIIIILandroid/os/IBinder;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    const/4 v0, -0x2

    iput v0, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    iput p1, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    iput p2, p0, Landroid/view/ContentRecordingSession;->mRecordingOwnerUid:I

    iput p3, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    iput p4, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-eqz p4, :cond_1

    const/4 p1, 0x1

    if-eq p4, p1, :cond_1

    const/4 p1, 0x2

    if-ne p4, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "contentToRecord was "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but must be one of: RECORD_CONTENT_DISPLAY(0), RECORD_CONTENT_TASK(1), RECORD_CONTENT_BELOW_OVERLAY(2)"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p5, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    iput-object p6, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    iput-boolean p7, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    iput p8, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    iput v0, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    iput v0, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    iput-boolean v1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    const/4 v2, -0x2

    iput v2, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    and-int/lit8 v3, v2, 0x40

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v1, v4

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput v3, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    iput v5, p0, Landroid/view/ContentRecordingSession;->mRecordingOwnerUid:I

    iput v6, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    iput v7, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-eqz v7, :cond_3

    if-eq v7, v4, :cond_3

    const/4 v2, 0x2

    if-ne v7, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "contentToRecord was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but must be one of: RECORD_CONTENT_DISPLAY(0), RECORD_CONTENT_TASK(1), RECORD_CONTENT_BELOW_OVERLAY(2)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iput v8, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    iput-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    iput-boolean v1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    iput p1, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static blacklist createDisplaySession(I)Landroid/view/ContentRecordingSession;
    .locals 1

    new-instance v0, Landroid/view/ContentRecordingSession;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/ContentRecordingSession;->setDisplayToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ContentRecordingSession;->setContentToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ContentRecordingSession;->setTargetUid(I)Landroid/view/ContentRecordingSession;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createOverlaySession(II)Landroid/view/ContentRecordingSession;
    .locals 1

    new-instance v0, Landroid/view/ContentRecordingSession;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/ContentRecordingSession;->setDisplayToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ContentRecordingSession;->setContentToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ContentRecordingSession;->setRecordingOwnerUid(I)Landroid/view/ContentRecordingSession;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createTaskSession(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/view/ContentRecordingSession;->createTaskSession(Landroid/os/IBinder;I)Landroid/view/ContentRecordingSession;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createTaskSession(Landroid/os/IBinder;I)Landroid/view/ContentRecordingSession;
    .locals 2

    new-instance v0, Landroid/view/ContentRecordingSession;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ContentRecordingSession;->setContentToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ContentRecordingSession;->setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ContentRecordingSession;->setTaskId(I)Landroid/view/ContentRecordingSession;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist isProjectionOnSameDisplay(Landroid/view/ContentRecordingSession;Landroid/view/ContentRecordingSession;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isValid(Landroid/view/ContentRecordingSession;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getTokenToRecord()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getDisplayToRecord()I

    move-result v4

    if-le v4, v2, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getDisplayToRecord()I

    move-result v5

    if-le v5, v2, :cond_4

    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getRecordingOwnerUid()I

    move-result p0

    if-le p0, v2, :cond_4

    move p0, v3

    goto :goto_2

    :cond_4
    move p0, v0

    :goto_2
    if-nez v1, :cond_6

    if-nez v4, :cond_6

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    return v0

    :cond_6
    :goto_3
    return v3
.end method

.method public static blacklist recordContentToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "RECORD_CONTENT_BELOW_OVERLAY"

    return-object p0

    :cond_1
    const-string p0, "RECORD_CONTENT_TASK"

    return-object p0

    :cond_2
    const-string p0, "RECORD_CONTENT_DISPLAY"

    return-object p0
.end method

.method public static blacklist targetUidToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "TARGET_UID_FULL_SCREEN"

    return-object p0

    :cond_1
    const-string p0, "TARGET_UID_UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/view/ContentRecordingSession;

    iget v2, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    iget v3, p1, Landroid/view/ContentRecordingSession;->mTaskId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/view/ContentRecordingSession;->mRecordingOwnerUid:I

    iget v3, p1, Landroid/view/ContentRecordingSession;->mRecordingOwnerUid:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    iget v3, p1, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    iget v3, p1, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    iget v3, p1, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    iget-boolean v3, p1, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    iget p1, p1, Landroid/view/ContentRecordingSession;->mTargetUid:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getContentToRecord()I
    .locals 0

    iget p0, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    return p0
.end method

.method public blacklist getDisplayToRecord()I
    .locals 0

    iget p0, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    return p0
.end method

.method public blacklist getRecordingOwnerUid()I
    .locals 0

    iget p0, p0, Landroid/view/ContentRecordingSession;->mRecordingOwnerUid:I

    return p0
.end method

.method public blacklist getTargetUid()I
    .locals 0

    iget p0, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    return p0
.end method

.method public blacklist getTaskId()I
    .locals 0

    iget p0, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    return p0
.end method

.method public blacklist getTokenToRecord()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    return-object p0
.end method

.method public blacklist getVirtualDisplayId()I
    .locals 0

    iget p0, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/ContentRecordingSession;->mRecordingOwnerUid:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist isWaitingForConsent()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    return p0
.end method

.method public blacklist setContentToRecord(I)Landroid/view/ContentRecordingSession;
    .locals 2

    iput p1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "contentToRecord was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but must be one of: RECORD_CONTENT_DISPLAY(0), RECORD_CONTENT_TASK(1), RECORD_CONTENT_BELOW_OVERLAY(2)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public blacklist setDisplayToRecord(I)Landroid/view/ContentRecordingSession;
    .locals 0

    iput p1, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    return-object p0
.end method

.method public blacklist setRecordingOwnerUid(I)Landroid/view/ContentRecordingSession;
    .locals 0

    iput p1, p0, Landroid/view/ContentRecordingSession;->mRecordingOwnerUid:I

    return-object p0
.end method

.method public blacklist setTargetUid(I)Landroid/view/ContentRecordingSession;
    .locals 0

    iput p1, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    return-object p0
.end method

.method public blacklist setTaskId(I)Landroid/view/ContentRecordingSession;
    .locals 0

    iput p1, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    return-object p0
.end method

.method public blacklist setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;
    .locals 0

    iput-object p1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    return-object p0
.end method

.method public blacklist setVirtualDisplayId(I)Landroid/view/ContentRecordingSession;
    .locals 0

    iput p1, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    return-object p0
.end method

.method public blacklist setWaitingForConsent(Z)Landroid/view/ContentRecordingSession;
    .locals 0

    iput-boolean p1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentRecordingSession { taskId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recordingOwnerUid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/ContentRecordingSession;->mRecordingOwnerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", virtualDisplayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", contentToRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-static {v1}, Landroid/view/ContentRecordingSession;->recordContentToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayToRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tokenToRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", waitingForConsent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", targetUid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean p2, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    if-eqz p2, :cond_0

    const/16 p2, 0x40

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    or-int/lit8 p2, p2, 0x20

    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ContentRecordingSession;->mRecordingOwnerUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :cond_2
    iget p0, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
