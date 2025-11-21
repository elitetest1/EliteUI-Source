.class public Lcom/android/internal/app/SystemUserHomeActivity;
.super Landroid/app/Activity;
.source "SystemUserHomeActivity.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SystemUserHome"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "SystemUserHome"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x10901c4

    invoke-virtual {p0, p1}, Lcom/android/internal/app/SystemUserHomeActivity;->setContentView(I)V

    return-void
.end method

.method protected whitelist onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string p0, "SystemUserHome"

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
