.class public abstract Lcom/android/internal/widget/remotecompose/core/Operation;
.super Ljava/lang/Object;
.source "Operation.java"


# static fields
.field private static final blacklist ENABLE_DIRTY_FLAG_OPTIMIZATION:Z = true


# instance fields
.field private blacklist mDirty:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/Operation;->mDirty:Z

    return-void
.end method


# virtual methods
.method public abstract blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
.end method

.method public abstract blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public blacklist isDirty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/remotecompose/core/Operation;->mDirty:Z

    return p0
.end method

.method public blacklist markDirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/Operation;->mDirty:Z

    return-void
.end method

.method public blacklist markNotDirty()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/Operation;->mDirty:Z

    return-void
.end method

.method public abstract blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
.end method
