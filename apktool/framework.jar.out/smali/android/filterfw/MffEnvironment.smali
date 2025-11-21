.class public Landroid/filterfw/MffEnvironment;
.super Ljava/lang/Object;
.source "MffEnvironment.java"


# instance fields
.field private greylist-max-o mContext:Landroid/filterfw/core/FilterContext;


# direct methods
.method protected constructor greylist-max-o <init>(Landroid/filterfw/core/FrameManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Landroid/filterfw/core/CachedFrameManager;

    invoke-direct {p1}, Landroid/filterfw/core/CachedFrameManager;-><init>()V

    :cond_0
    new-instance v0, Landroid/filterfw/core/FilterContext;

    invoke-direct {v0}, Landroid/filterfw/core/FilterContext;-><init>()V

    iput-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/FilterContext;->setFrameManager(Landroid/filterfw/core/FrameManager;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o activateGLEnvironment()V
    .locals 1

    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {p0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object p0

    invoke-virtual {p0}, Landroid/filterfw/core/GLEnvironment;->activate()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "No GLEnvironment in place to activate!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o createGLEnvironment()V
    .locals 1

    new-instance v0, Landroid/filterfw/core/GLEnvironment;

    invoke-direct {v0}, Landroid/filterfw/core/GLEnvironment;-><init>()V

    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->initWithNewContext()V

    invoke-virtual {p0, v0}, Landroid/filterfw/MffEnvironment;->setGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V

    return-void
.end method

.method public greylist-max-o deactivateGLEnvironment()V
    .locals 1

    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {p0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object p0

    invoke-virtual {p0}, Landroid/filterfw/core/GLEnvironment;->deactivate()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "No GLEnvironment in place to deactivate!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o getContext()Landroid/filterfw/core/FilterContext;
    .locals 0

    iget-object p0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    return-object p0
.end method

.method public greylist-max-o setGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V
    .locals 0

    iget-object p0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {p0, p1}, Landroid/filterfw/core/FilterContext;->initGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V

    return-void
.end method
