.class public final Landroid/permission/PermissionManager$SplitPermissionInfo;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SplitPermissionInfo"
.end annotation


# instance fields
.field private final blacklist mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;


# direct methods
.method private constructor blacklist <init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;Landroid/permission/PermissionManager-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-direct {v0, p1, p2, p3}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    invoke-direct {p0, v0}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/permission/PermissionManager$SplitPermissionInfo;

    iget-object p0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    iget-object p1, p1, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {p0, p1}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getNewPermissions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {p0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getNewPermissions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getSplitPermission()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {p0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getSplitPermission()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getTargetSdk()I
    .locals 0

    iget-object p0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {p0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getTargetSdk()I

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {p0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->hashCode()I

    move-result p0

    return p0
.end method
