.class public Landroid/app/JobSchedulerImpl;
.super Landroid/app/job/JobScheduler;
.source "JobSchedulerImpl.java"


# instance fields
.field greylist-max-o mBinder:Landroid/app/job/IJobScheduler;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mNamespace:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Landroid/app/JobSchedulerImpl;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p1, Landroid/app/JobSchedulerImpl;->mContext:Landroid/content/Context;

    iget-object p1, p1, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-direct {p0, v0, p1, p2}, Landroid/app/JobSchedulerImpl;-><init>(Landroid/content/Context;Landroid/app/job/IJobScheduler;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/job/IJobScheduler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/JobSchedulerImpl;-><init>(Landroid/content/Context;Landroid/app/job/IJobScheduler;Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/app/job/IJobScheduler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobScheduler;-><init>()V

    iput-object p1, p0, Landroid/app/JobSchedulerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iput-object p3, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist canRunUserInitiatedJobs()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object p0, p0, Landroid/app/JobSchedulerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/app/job/IJobScheduler;->canRunUserInitiatedJobs(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist cancel(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object p0, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/app/job/IJobScheduler;->cancel(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public whitelist cancelAll()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object p0, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/app/job/IJobScheduler;->cancelAllInNamespace(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public whitelist cancelInAllNamespaces()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {p0}, Landroid/app/job/IJobScheduler;->cancelAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public whitelist enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object p0, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Landroid/app/job/IJobScheduler;->enqueue(Ljava/lang/String;Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;
    .locals 1

    invoke-static {p1}, Landroid/app/JobSchedulerImpl;->sanitizeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/JobSchedulerImpl;

    invoke-direct {v0, p0, p1}, Landroid/app/JobSchedulerImpl;-><init>(Landroid/app/JobSchedulerImpl;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "namespace cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "namespace cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getAllJobSnapshots()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobSnapshot;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {p0}, Landroid/app/job/IJobScheduler;->getAllJobSnapshots()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getAllPendingJobs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object p0, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/app/job/IJobScheduler;->getAllPendingJobsInNamespace(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getPendingJob(I)Landroid/app/job/JobInfo;
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object p0, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/app/job/IJobScheduler;->getPendingJob(Ljava/lang/String;I)Landroid/app/job/JobInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getPendingJobReason(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object p0, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/app/job/IJobScheduler;->getPendingJobReason(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getPendingJobReasons(I)[I
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object p0, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/app/job/IJobScheduler;->getPendingJobReasons(Ljava/lang/String;I)[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public whitelist getPendingJobReasonsHistory(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/job/PendingJobReasonsInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object p0, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/app/job/IJobScheduler;->getPendingJobReasonsHistory(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public whitelist getPendingJobsInAllNamespaces()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {p0}, Landroid/app/job/IJobScheduler;->getAllPendingJobs()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getStartedJobs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {p0}, Landroid/app/job/IJobScheduler;->getStartedJobs()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist hasRunUserInitiatedJobsPermission(Ljava/lang/String;I)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {p0, p1, p2}, Landroid/app/job/IJobScheduler;->hasRunUserInitiatedJobsPermission(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist notePendingUserRequestedAppStop(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/job/IJobScheduler;->notePendingUserRequestedAppStop(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public blacklist registerUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {p0, p1}, Landroid/app/job/IJobScheduler;->registerUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public whitelist schedule(Landroid/app/job/JobInfo;)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object p0, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/app/job/IJobScheduler;->schedule(Ljava/lang/String;Landroid/app/job/JobInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .locals 6

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/job/IJobScheduler;->scheduleAsPackage(Ljava/lang/String;Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist unregisterUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {p0, p1}, Landroid/app/job/IJobScheduler;->unregisterUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
