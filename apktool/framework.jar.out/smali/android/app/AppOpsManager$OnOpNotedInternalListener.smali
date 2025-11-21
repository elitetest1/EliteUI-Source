.class public interface abstract Landroid/app/AppOpsManager$OnOpNotedInternalListener;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpNotedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnOpNotedInternalListener"
.end annotation


# virtual methods
.method public abstract blacklist onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V
.end method

.method public whitelist onOpNoted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-interface/range {p0 .. p6}, Landroid/app/AppOpsManager$OnOpNotedInternalListener;->onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
