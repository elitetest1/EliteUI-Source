.class public Lcom/samsung/vekit/Common/Object/LogProfile;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "LogProfile.java"


# instance fields
.field private blacklist logProfileType:Lcom/samsung/vekit/Common/Type/LogProfileType;

.field private blacklist pathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->LOG_PROFILE:Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->TAG:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->id:I

    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->name:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->pathList:Ljava/util/ArrayList;

    sget-object p1, Lcom/samsung/vekit/Common/Type/LogProfileType;->COMMON:Lcom/samsung/vekit/Common/Type/LogProfileType;

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->logProfileType:Lcom/samsung/vekit/Common/Type/LogProfileType;

    invoke-direct {p0, p4}, Lcom/samsung/vekit/Common/Object/LogProfile;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->LOG_PROFILE:Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->TAG:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->id:I

    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->name:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->pathList:Ljava/util/ArrayList;

    sget-object p1, Lcom/samsung/vekit/Common/Type/LogProfileType;->ADAPTIVE:Lcom/samsung/vekit/Common/Type/LogProfileType;

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->logProfileType:Lcom/samsung/vekit/Common/Type/LogProfileType;

    invoke-direct {p0, p4, p5, p6}, Lcom/samsung/vekit/Common/Object/LogProfile;->setPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setPath(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->TAG:Ljava/lang/String;

    const-string p1, "Path is Empty."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->TAG:Ljava/lang/String;

    const-string p1, "filterPath doesn\'t exist."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/samsung/vekit/Common/Type/LogProfileType;->COMMON:Lcom/samsung/vekit/Common/Type/LogProfileType;

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->logProfileType:Lcom/samsung/vekit/Common/Type/LogProfileType;

    return-void
.end method

.method private blacklist setPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sdrPath doesn\'t exist."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->TAG:Ljava/lang/String;

    const-string p1, "hdrPath doesn\'t exist."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->TAG:Ljava/lang/String;

    const-string p1, "hlgPath doesn\'t exist."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->pathList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->pathList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/samsung/vekit/Common/Type/LogProfileType;->ADAPTIVE:Lcom/samsung/vekit/Common/Type/LogProfileType;

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->logProfileType:Lcom/samsung/vekit/Common/Type/LogProfileType;

    return-void

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->TAG:Ljava/lang/String;

    const-string p1, "Some Path is Empty."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist getLogProfileType()Lcom/samsung/vekit/Common/Type/LogProfileType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->logProfileType:Lcom/samsung/vekit/Common/Type/LogProfileType;

    return-object p0
.end method

.method public blacklist getPathList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->pathList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist setLogProfileType(Lcom/samsung/vekit/Common/Type/LogProfileType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->logProfileType:Lcom/samsung/vekit/Common/Type/LogProfileType;

    return-void
.end method
