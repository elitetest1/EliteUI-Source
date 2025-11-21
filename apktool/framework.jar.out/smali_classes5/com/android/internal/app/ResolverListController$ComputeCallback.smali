.class Lcom/android/internal/app/ResolverListController$ComputeCallback;
.super Ljava/lang/Object;
.source "ResolverListController.java"

# interfaces
.implements Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComputeCallback"
.end annotation


# instance fields
.field private blacklist mFinishComputeSignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ResolverListController;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/ResolverListController$ComputeCallback;->mFinishComputeSignal:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public blacklist afterCompute()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverListController$ComputeCallback;->mFinishComputeSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
