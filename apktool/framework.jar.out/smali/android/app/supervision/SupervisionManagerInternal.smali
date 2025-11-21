.class public abstract Landroid/app/supervision/SupervisionManagerInternal;
.super Ljava/lang/Object;
.source "SupervisionManagerInternal.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist isActiveSupervisionApp(I)Z
.end method

.method public abstract blacklist isSupervisionEnabledForUser(I)Z
.end method

.method public abstract blacklist isSupervisionLockscreenEnabledForUser(I)Z
.end method

.method public abstract blacklist setSupervisionEnabledForUser(IZ)V
.end method

.method public abstract blacklist setSupervisionLockscreenEnabledForUser(IZLandroid/os/PersistableBundle;)V
.end method
