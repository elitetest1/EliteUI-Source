.class public final Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
.super Ljava/lang/Object;
.source "Asn1Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTag:I


# direct methods
.method private constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->-$$Nest$smisConstructedTag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mTag:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mChildren:Ljava/util/List;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Builder should be created for a constructed tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor blacklist <init>(ILcom/android/internal/telephony/uicc/asn1/Asn1Node-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public blacklist addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mChildren:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addChildAsBits(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 6

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->-$$Nest$smisConstructedTag(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    new-array v1, v0, [B

    invoke-static {p2}, Ljava/lang/Integer;->reverse(I)I

    move-result p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_1

    rsub-int/lit8 v5, v2, 0x4

    mul-int/lit8 v5, v5, 0x8

    shr-int v5, p2, v5

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    if-eqz v5, :cond_0

    move v4, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v4, 0x1

    aget-byte v0, v1, v4

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->countTrailingZeros(B)B

    move-result v0

    aput-byte v0, v1, v3

    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-direct {v0, p1, v1, v3, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(I[BII)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot set value of a constructed tag: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist addChildAsBoolean(IZ)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 3

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->-$$Nest$smisConstructedTag(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->-$$Nest$sfgetTRUE_BYTES()[B

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->-$$Nest$sfgetFALSE_BYTES()[B

    move-result-object p2

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(I[BII)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot set value of a constructed tag: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 3

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->-$$Nest$smisConstructedTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    const/4 v1, 0x0

    array-length v2, p2

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(I[BII)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot set value of a constructed tag: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist addChildAsBytesFromHex(ILjava/lang/String;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 0

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist addChildAsInteger(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 3

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->-$$Nest$smisConstructedTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->signedIntToBytes(I)[B

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    const/4 v1, 0x0

    array-length v2, p2

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(I[BII)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot set value of a constructed tag: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist addChildAsString(ILjava/lang/String;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 3

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->-$$Nest$smisConstructedTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    const/4 v1, 0x0

    array-length v2, p2

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(I[BII)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot set value of a constructed tag: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist addChildren([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([BII)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->hasNextNode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mChildren:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public blacklist build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .locals 3

    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mTag:I

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mChildren:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(ILjava/util/List;Lcom/android/internal/telephony/uicc/asn1/Asn1Node-IA;)V

    return-object v0
.end method
