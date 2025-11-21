.class public abstract Landroid/filterfw/core/Scheduler;
.super Ljava/lang/Object;
.source "Scheduler.java"


# instance fields
.field private greylist-max-o mGraph:Landroid/filterfw/core/FilterGraph;


# direct methods
.method constructor greylist-max-o <init>(Landroid/filterfw/core/FilterGraph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/filterfw/core/Scheduler;->mGraph:Landroid/filterfw/core/FilterGraph;

    return-void
.end method


# virtual methods
.method greylist-max-o finished()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method greylist-max-o getGraph()Landroid/filterfw/core/FilterGraph;
    .locals 0

    iget-object p0, p0, Landroid/filterfw/core/Scheduler;->mGraph:Landroid/filterfw/core/FilterGraph;

    return-object p0
.end method

.method abstract greylist-max-o reset()V
.end method

.method abstract greylist-max-o scheduleNextNode()Landroid/filterfw/core/Filter;
.end method
