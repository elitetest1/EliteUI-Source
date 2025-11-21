.class public Landroid/content/pm/PackagePartitions$SystemPartition;
.super Ljava/lang/Object;
.source "PackagePartitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackagePartitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemPartition"
.end annotation


# instance fields
.field private final blacklist mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field private final blacklist mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mNonConicalFolder:Ljava/io/File;

.field private final blacklist mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field private final blacklist mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field public final blacklist type:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    iput v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iget-object v1, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    invoke-static {v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions-IA;)V

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iget-object p1, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mNonConicalFolder:Ljava/io/File;

    iput-object p1, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mNonConicalFolder:Ljava/io/File;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/io/File;ILjava/lang/String;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    iput-object p3, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    new-instance p2, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions-IA;)V

    iput-object p2, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    new-instance p2, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const-string v0, "app"

    invoke-direct {p2, p1, v0, p3}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/pm/PackagePartitions-IA;)V

    iput-object p2, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz p4, :cond_0

    new-instance p2, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const-string/jumbo p4, "priv-app"

    invoke-direct {p2, p1, p4, p3}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/pm/PackagePartitions-IA;)V

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    iput-object p2, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz p5, :cond_1

    new-instance p2, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const-string/jumbo p4, "overlay"

    invoke-direct {p2, p1, p4, p3}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/pm/PackagePartitions-IA;)V

    move-object p3, p2

    :cond_1
    iput-object p3, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iput-object p1, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mNonConicalFolder:Ljava/io/File;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/io/File;ILjava/lang/String;ZZLandroid/content/pm/PackagePartitions-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;ILjava/lang/String;ZZ)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .locals 6

    iget v2, p2, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    iget-object v3, p2, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    move v0, v4

    move v4, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    iget-object p2, p2, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz p2, :cond_1

    move v5, v1

    move-object v0, p0

    move-object v1, p1

    goto :goto_1

    :cond_1
    move v5, v0

    move-object v1, p1

    move-object v0, p0

    :goto_1
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;ILjava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public blacklist containsApp(Ljava/io/File;)Z
    .locals 0

    iget-object p0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->-$$Nest$smcanonicalize(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist containsFile(Ljava/io/File;)Z
    .locals 0

    iget-object p0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    invoke-static {p0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->-$$Nest$smcanonicalize(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public blacklist containsOverlay(Ljava/io/File;)Z
    .locals 0

    iget-object p0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->-$$Nest$smcanonicalize(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist containsPath(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public blacklist containsPrivApp(Ljava/io/File;)Z
    .locals 0

    iget-object p0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->-$$Nest$smcanonicalize(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getAppFolder()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getFolder()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    invoke-static {p0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNonConicalFolder()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mNonConicalFolder:Ljava/io/File;

    return-object p0
.end method

.method public blacklist getOverlayFolder()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPrivAppFolder()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
