.class public Landroid/app/servertransaction/ResumeActivityItem;
.super Landroid/app/servertransaction/ActivityLifecycleItem;
.source "ResumeActivityItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ResumeActivityItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mIsForward:Z

.field private final greylist-max-o mProcState:I

.field private final blacklist mShouldSendCompatFakeFocus:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/servertransaction/ResumeActivityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ResumeActivityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ResumeActivityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;IZZ)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>(Landroid/os/IBinder;)V

    iput p2, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    iput-boolean p3, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    iput-boolean p4, p0, Landroid/app/servertransaction/ResumeActivityItem;->mShouldSendCompatFakeFocus:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;ZZ)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/app/servertransaction/ResumeActivityItem;-><init>(Landroid/os/IBinder;IZZ)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/app/servertransaction/ResumeActivityItem;->mShouldSendCompatFakeFocus:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ResumeActivityItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ResumeActivityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/servertransaction/ActivityLifecycleItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/app/servertransaction/ResumeActivityItem;

    iget v1, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    iget v3, p1, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    iget-boolean v3, p1, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    if-ne v1, v3, :cond_2

    iget-boolean p0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mShouldSendCompatFakeFocus:Z

    iget-boolean p1, p1, Landroid/app/servertransaction/ResumeActivityItem;->mShouldSendCompatFakeFocus:Z

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 8

    const-string p3, "activityResume"

    const-wide/16 v0, 0x40

    invoke-static {v0, v1, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-boolean v5, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    iget-boolean v6, p0, Landroid/app/servertransaction/ResumeActivityItem;->mShouldSendCompatFakeFocus:Z

    const-string v7, "RESUME_ACTIVITY"

    const/4 v4, 0x1

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/app/ClientTransactionHandler;->handleResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZZLjava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public greylist-max-o getTargetState()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    const/16 v0, 0x20f

    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mShouldSendCompatFakeFocus:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 1

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/servertransaction/ResumeActivityItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/servertransaction/ResumeActivityItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/ClientTransactionHandler;->isHandleSplashScreenExit(Landroid/os/IBinder;)Z

    move-result p0

    invoke-virtual {p2, v0, p0}, Landroid/app/ActivityClient;->activityResumed(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;)V
    .locals 1

    iget p0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/app/ClientTransactionHandler;->updateProcessState(IZ)V

    :cond_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResumeActivityItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",procState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isForward="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",shouldSendCompatFakeFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mShouldSendCompatFakeFocus:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/ActivityLifecycleItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mShouldSendCompatFakeFocus:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
