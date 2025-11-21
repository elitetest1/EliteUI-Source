.class public interface abstract Landroid/app/AppOpsManager$OnOpStartedListener;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnOpStartedListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$OnOpStartedListener$StartedType;
    }
.end annotation


# static fields
.field public static final blacklist START_TYPE_FAILED:I = 0x0

.field public static final blacklist START_TYPE_RESUMED:I = 0x2

.field public static final blacklist START_TYPE_STARTED:I = 0x1


# virtual methods
.method public abstract blacklist onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V
.end method

.method public blacklist onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIII)V
    .locals 0

    const/4 p8, 0x2

    if-eq p7, p8, :cond_0

    invoke-interface/range {p0 .. p6}, Landroid/app/AppOpsManager$OnOpStartedListener;->onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public blacklist onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 0

    if-nez p5, :cond_0

    move p5, p6

    move p6, p7

    move p7, p8

    move p8, p9

    move p9, p10

    invoke-interface/range {p0 .. p9}, Landroid/app/AppOpsManager$OnOpStartedListener;->onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIII)V

    :cond_0
    return-void
.end method
