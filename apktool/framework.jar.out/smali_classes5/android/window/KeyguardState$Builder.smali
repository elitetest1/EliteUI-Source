.class public final Landroid/window/KeyguardState$Builder;
.super Ljava/lang/Object;
.source "KeyguardState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/KeyguardState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAodShowing:Z

.field private blacklist mKeyguardShowing:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/KeyguardState;
    .locals 3

    new-instance v0, Landroid/window/KeyguardState;

    iget-boolean v1, p0, Landroid/window/KeyguardState$Builder;->mKeyguardShowing:Z

    iget-boolean p0, p0, Landroid/window/KeyguardState$Builder;->mAodShowing:Z

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/window/KeyguardState;-><init>(ZZLandroid/window/KeyguardState-IA;)V

    return-object v0
.end method

.method public blacklist setAodShowing(Z)Landroid/window/KeyguardState$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/window/KeyguardState$Builder;->mAodShowing:Z

    return-object p0
.end method

.method public blacklist setKeyguardShowing(Z)Landroid/window/KeyguardState$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/window/KeyguardState$Builder;->mKeyguardShowing:Z

    return-object p0
.end method
