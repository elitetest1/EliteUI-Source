.class public Landroid/os/SemHcmManager;
.super Ljava/lang/Object;
.source "SemHcmManager.java"


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "SemHcmManager"


# instance fields
.field blacklist mHandler:Landroid/os/Handler;

.field blacklist mService:Landroid/os/ISemHcmManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/SemHcmManager;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/ISemHcmManager;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/SemHcmManager;->mService:Landroid/os/ISemHcmManager;

    iput-object p2, p0, Landroid/os/SemHcmManager;->mHandler:Landroid/os/Handler;

    return-void
.end method
