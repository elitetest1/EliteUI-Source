.class public Landroid/audio/policy/configuration/V7_0/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


# instance fields
.field private blacklist channelMasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioChannelMask;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist encapsulationType:Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

.field private blacklist format:Ljava/lang/String;

.field private blacklist name:Ljava/lang/String;

.field private blacklist samplingRates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Profile;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/Profile;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Profile;-><init>()V

    const-string/jumbo v1, "name"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Profile;->setName(Ljava/lang/String;)V

    :cond_0
    const-string v1, "format"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Profile;->setFormat(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v1, "samplingRates"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "\\s+"

    if-eqz v1, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v1, v7

    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/Profile;->setSamplingRates(Ljava/util/List;)V

    :cond_3
    const-string v1, "channelMasks"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v6, v1, v3

    invoke-static {v6}, Landroid/audio/policy/configuration/V7_0/AudioChannelMask;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/Profile;->setChannelMasks(Ljava/util/List;)V

    :cond_5
    const-string v1, "encapsulationType"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Profile;->setEncapsulationType(Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;)V

    :cond_6
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getChannelMasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioChannelMask;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getEncapsulationType()Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->encapsulationType:Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

    return-object p0
.end method

.method public blacklist getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->format:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->name:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSamplingRates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    return-object p0
.end method

.method blacklist hasChannelMasks()Z
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method blacklist hasEncapsulationType()Z
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->encapsulationType:Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method blacklist hasFormat()Z
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->format:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method blacklist hasName()Z
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->name:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method blacklist hasSamplingRates()Z
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist setChannelMasks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioChannelMask;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    return-void
.end method

.method public blacklist setEncapsulationType(Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->encapsulationType:Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

    return-void
.end method

.method public blacklist setFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->format:Ljava/lang/String;

    return-void
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->name:Ljava/lang/String;

    return-void
.end method

.method public blacklist setSamplingRates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    return-void
.end method
