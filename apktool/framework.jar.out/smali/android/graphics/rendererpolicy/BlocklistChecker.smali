.class public Landroid/graphics/rendererpolicy/BlocklistChecker;
.super Ljava/lang/Object;
.source "BlocklistChecker.java"


# static fields
.field public static final blacklist EMPTY_STRING:Ljava/lang/String; = ""

.field private static final blacklist TAG:Ljava/lang/String; = "listChecker"


# instance fields
.field private blacklist mSkiaGlBlocklist:Landroid/graphics/rendererpolicy/Blocklist;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist printDebugLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "listChecker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist checkSkiaGlBlocklist(Landroid/graphics/rendererpolicy/QueryInfo;)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/graphics/rendererpolicy/BlocklistChecker;->isValidQueryInfo(Landroid/graphics/rendererpolicy/QueryInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "queryInfo is invalid."

    invoke-static {p0}, Landroid/graphics/rendererpolicy/BlocklistChecker;->printDebugLog(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Landroid/graphics/rendererpolicy/BlocklistChecker;->mSkiaGlBlocklist:Landroid/graphics/rendererpolicy/Blocklist;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/rendererpolicy/Blocklist;->getItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroid/graphics/rendererpolicy/BlocklistChecker;->mSkiaGlBlocklist:Landroid/graphics/rendererpolicy/Blocklist;

    invoke-virtual {p0}, Landroid/graphics/rendererpolicy/Blocklist;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/rendererpolicy/BlockItem;

    invoke-virtual {v0, p1}, Landroid/graphics/rendererpolicy/BlockItem;->isBlockItemMatched(Landroid/graphics/rendererpolicy/QueryInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "list matched."

    invoke-static {p0}, Landroid/graphics/rendererpolicy/BlocklistChecker;->printDebugLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    const-string/jumbo p0, "nothing matched in list."

    invoke-static {p0}, Landroid/graphics/rendererpolicy/BlocklistChecker;->printDebugLog(Ljava/lang/String;)V

    return v1

    :cond_4
    :goto_0
    const-string p0, "list or list.getItems is null."

    invoke-static {p0}, Landroid/graphics/rendererpolicy/BlocklistChecker;->printDebugLog(Ljava/lang/String;)V

    return v1
.end method

.method public blacklist isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    const-string p0, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isValidQueryInfo(Landroid/graphics/rendererpolicy/QueryInfo;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/rendererpolicy/QueryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/rendererpolicy/BlocklistChecker;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/rendererpolicy/QueryInfo;->getModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/rendererpolicy/BlocklistChecker;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/rendererpolicy/QueryInfo;->getChipsetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/rendererpolicy/BlocklistChecker;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/rendererpolicy/QueryInfo;->getOsVersion()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist parseConfiguration(Ljava/io/InputStream;)V
    .locals 1

    new-instance v0, Landroid/graphics/rendererpolicy/BlocklistParser;

    invoke-direct {v0}, Landroid/graphics/rendererpolicy/BlocklistParser;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/rendererpolicy/BlocklistParser;->parseConfigWithJsonReader(Ljava/io/InputStream;)Landroid/graphics/rendererpolicy/Blocklist;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/rendererpolicy/BlocklistChecker;->mSkiaGlBlocklist:Landroid/graphics/rendererpolicy/Blocklist;

    return-void
.end method
