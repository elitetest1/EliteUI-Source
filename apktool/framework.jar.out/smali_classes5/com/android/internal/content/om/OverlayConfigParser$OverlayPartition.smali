.class public Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
.super Landroid/content/pm/PackagePartitions$SystemPartition;
.source "OverlayConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/om/OverlayConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverlayPartition"
.end annotation


# static fields
.field static final blacklist POLICY_ODM:Ljava/lang/String; = "odm"

.field static final blacklist POLICY_OEM:Ljava/lang/String; = "oem"

.field static final blacklist POLICY_PRODUCT:Ljava/lang/String; = "product"

.field static final blacklist POLICY_PUBLIC:Ljava/lang/String; = "public"

.field static final blacklist POLICY_SYSTEM:Ljava/lang/String; = "system"

.field static final blacklist POLICY_VENDOR:Ljava/lang/String; = "vendor"


# instance fields
.field public final blacklist policy:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V

    invoke-static {p1}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policyForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policy:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V

    invoke-static {p2}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policyForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policy:Ljava/lang/String;

    return-void
.end method

.method private static blacklist policyForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to determine policy for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo p0, "product"

    return-object p0

    :cond_2
    const-string p0, "oem"

    return-object p0

    :cond_3
    const-string p0, "odm"

    return-object p0

    :cond_4
    const-string/jumbo p0, "vendor"

    return-object p0

    :cond_5
    :goto_0
    const-string/jumbo p0, "system"

    return-object p0
.end method
