.class public abstract Landroid/provider/OneTimeUseBuilder;
.super Ljava/lang/Object;
.source "OneTimeUseBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private greylist-max-o used:Z


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/provider/OneTimeUseBuilder;->used:Z

    return-void
.end method


# virtual methods
.method public abstract greylist-max-o build()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected greylist-max-o checkNotUsed()V
    .locals 1

    iget-boolean p0, p0, Landroid/provider/OneTimeUseBuilder;->used:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected greylist-max-o markUsed()V
    .locals 1

    invoke-virtual {p0}, Landroid/provider/OneTimeUseBuilder;->checkNotUsed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/provider/OneTimeUseBuilder;->used:Z

    return-void
.end method
