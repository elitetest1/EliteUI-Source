.class public Lcom/samsung/vekit/Common/Object/ToneInfo;
.super Ljava/lang/Object;
.source "ToneInfo.java"


# instance fields
.field private blacklist maxToneType:Ljava/lang/Integer;

.field private blacklist toneArray:[F


# direct methods
.method public constructor blacklist <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/vekit/Common/Type/ToneType;->values()[Lcom/samsung/vekit/Common/Type/ToneType;

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/ToneInfo;->maxToneType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/ToneInfo;->toneArray:[F

    invoke-static {}, Lcom/samsung/vekit/Common/Type/ToneType;->values()[Lcom/samsung/vekit/Common/Type/ToneType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/samsung/vekit/Common/Object/ToneInfo;->toneArray:[F

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Type/ToneType;->ordinal()I

    move-result v3

    const/4 v5, 0x0

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist getTone(Lcom/samsung/vekit/Common/Type/ToneType;)F
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/ToneInfo;->toneArray:[F

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/ToneType;->ordinal()I

    move-result p1

    aget p0, p0, p1

    return p0
.end method

.method public blacklist getToneArray()[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/ToneInfo;->toneArray:[F

    return-object p0
.end method

.method public blacklist setTone(Lcom/samsung/vekit/Common/Type/ToneType;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/ToneInfo;->toneArray:[F

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/ToneType;->ordinal()I

    move-result p1

    int-to-float p2, p2

    aput p2, p0, p1

    return-void
.end method

.method public blacklist setToneInfo(Lcom/samsung/vekit/Common/Object/ToneInfo;)V
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/ToneInfo;->getToneArray()[F

    move-result-object p1

    invoke-static {}, Lcom/samsung/vekit/Common/Type/ToneType;->values()[Lcom/samsung/vekit/Common/Type/ToneType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/samsung/vekit/Common/Object/ToneInfo;->toneArray:[F

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Type/ToneType;->ordinal()I

    move-result v5

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Type/ToneType;->ordinal()I

    move-result v3

    aget v3, p1, v3

    aput v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
