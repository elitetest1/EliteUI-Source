.class public Landroid/util/UtilConfig;
.super Ljava/lang/Object;
.source "UtilConfig.java"


# static fields
.field static blacklist sThrowExceptionForUpperArrayOutOfBounds:Z = true


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist setThrowExceptionForUpperArrayOutOfBounds(Z)V
    .locals 0

    sput-boolean p0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    return-void
.end method
