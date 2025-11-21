.class public interface abstract Landroid/window/SystemOverrideOnBackInvokedCallback;
.super Ljava/lang/Object;
.source "SystemOverrideOnBackInvokedCallback.java"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/SystemOverrideOnBackInvokedCallback$OverrideBehavior;
    }
.end annotation


# static fields
.field public static final blacklist OVERRIDE_FINISH_AND_REMOVE_TASK:I = 0x2

.field public static final blacklist OVERRIDE_MOVE_TASK_TO_BACK:I = 0x1

.field public static final blacklist OVERRIDE_UNDEFINED:I


# virtual methods
.method public blacklist overrideBehavior()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
