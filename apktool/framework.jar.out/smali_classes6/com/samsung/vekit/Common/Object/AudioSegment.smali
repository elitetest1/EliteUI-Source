.class public Lcom/samsung/vekit/Common/Object/AudioSegment;
.super Ljava/lang/Object;
.source "AudioSegment.java"


# instance fields
.field private blacklist enable:Z

.field private blacklist key:Ljava/lang/String;

.field private blacklist regionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/AudioRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->enable:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->key:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/AudioRegion;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->enable:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public blacklist addRegion(Lcom/samsung/vekit/Common/Object/AudioRegion;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist clearRegion()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public blacklist clone()Lcom/samsung/vekit/Common/Object/AudioSegment;
    .locals 2

    new-instance v0, Lcom/samsung/vekit/Common/Object/AudioSegment;

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/vekit/Common/Object/AudioSegment;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->enable:Z

    iput-boolean v1, v0, Lcom/samsung/vekit/Common/Object/AudioSegment;->enable:Z

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Common/Object/AudioRegion;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/AudioRegion;->clone()Lcom/samsung/vekit/Common/Object/AudioRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/AudioSegment;->addRegion(Lcom/samsung/vekit/Common/Object/AudioRegion;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/AudioSegment;->clone()Lcom/samsung/vekit/Common/Object/AudioSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->key:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRegion(I)Lcom/samsung/vekit/Common/Object/AudioRegion;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/vekit/Common/Object/AudioRegion;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "AudioSegment"

    const-string p1, "invalid index."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getRegionList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/AudioRegion;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist getRegionListSize()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public blacklist isEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->enable:Z

    return p0
.end method

.method public blacklist removeRegion(Lcom/samsung/vekit/Common/Object/AudioRegion;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->enable:Z

    return-void
.end method

.method public blacklist setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->key:Ljava/lang/String;

    return-void
.end method

.method public blacklist setRegionList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/AudioRegion;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AudioSegment;->regionList:Ljava/util/ArrayList;

    return-void
.end method
