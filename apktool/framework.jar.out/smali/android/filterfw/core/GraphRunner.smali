.class public abstract Landroid/filterfw/core/GraphRunner;
.super Ljava/lang/Object;
.source "GraphRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;
    }
.end annotation


# static fields
.field public static final greylist-max-o RESULT_BLOCKED:I = 0x4

.field public static final greylist-max-o RESULT_ERROR:I = 0x6

.field public static final greylist-max-o RESULT_FINISHED:I = 0x2

.field public static final greylist-max-o RESULT_RUNNING:I = 0x1

.field public static final greylist-max-o RESULT_SLEEPING:I = 0x3

.field public static final greylist-max-o RESULT_STOPPED:I = 0x5

.field public static final greylist-max-o RESULT_UNKNOWN:I


# instance fields
.field protected greylist-max-o mFilterContext:Landroid/filterfw/core/FilterContext;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/filterfw/core/FilterContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/filterfw/core/GraphRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    return-void
.end method


# virtual methods
.method protected greylist-max-o activateGlContext()Z
    .locals 1

    iget-object p0, p0, Landroid/filterfw/core/GraphRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {p0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/filterfw/core/GLEnvironment;->activate()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract greylist-max-o close()V
.end method

.method protected greylist-max-o deactivateGlContext()V
    .locals 0

    iget-object p0, p0, Landroid/filterfw/core/GraphRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {p0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/filterfw/core/GLEnvironment;->deactivate()V

    :cond_0
    return-void
.end method

.method public greylist-max-o getContext()Landroid/filterfw/core/FilterContext;
    .locals 0

    iget-object p0, p0, Landroid/filterfw/core/GraphRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    return-object p0
.end method

.method public abstract greylist getError()Ljava/lang/Exception;
.end method

.method public abstract greylist getGraph()Landroid/filterfw/core/FilterGraph;
.end method

.method public abstract greylist-max-o isRunning()Z
.end method

.method public abstract greylist run()V
.end method

.method public abstract greylist setDoneCallback(Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;)V
.end method

.method public abstract greylist stop()V
.end method
