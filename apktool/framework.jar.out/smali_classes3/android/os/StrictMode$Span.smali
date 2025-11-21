.class public Landroid/os/StrictMode$Span;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Span"
.end annotation


# instance fields
.field private final greylist-max-o mContainerState:Landroid/os/StrictMode$ThreadSpanState;

.field private greylist-max-o mCreateMillis:J

.field private greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mNext:Landroid/os/StrictMode$Span;

.field private greylist-max-o mPrev:Landroid/os/StrictMode$Span;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/os/StrictMode$Span;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNext(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0

    iget-object p0, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCreateMillis(Landroid/os/StrictMode$Span;J)V
    .locals 0

    iput-wide p1, p0, Landroid/os/StrictMode$Span;->mCreateMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmName(Landroid/os/StrictMode$Span;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNext(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)V
    .locals 0

    iput-object p1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPrev(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)V
    .locals 0

    iput-object p1, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    return-void
.end method

.method protected constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/StrictMode$Span;->mContainerState:Landroid/os/StrictMode$ThreadSpanState;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/StrictMode$ThreadSpanState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/StrictMode$Span;->mContainerState:Landroid/os/StrictMode$ThreadSpanState;

    return-void
.end method


# virtual methods
.method public greylist finish()V
    .locals 4

    const-string v0, "Span finished="

    iget-object v1, p0, Landroid/os/StrictMode$Span;->mContainerState:Landroid/os/StrictMode$ThreadSpanState;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    iget-object v2, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    iput-object v3, v2, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    :cond_1
    iget-object v3, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_2

    iput-object v2, v3, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    :cond_2
    iget-object v2, v1, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    if-ne v2, p0, :cond_3

    iget-object v2, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    iput-object v2, v1, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    :cond_3
    iget v2, v1, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetLOG_V()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "StrictMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; size="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/os/StrictMode$Span;->mCreateMillis:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    iput-object v0, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    iget v0, v1, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_5

    iget-object v0, v1, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    iput-object v0, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    iput-object p0, v1, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    iget p0, v1, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    :cond_5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
