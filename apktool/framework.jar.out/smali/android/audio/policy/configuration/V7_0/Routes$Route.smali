.class public Landroid/audio/policy/configuration/V7_0/Routes$Route;
.super Ljava/lang/Object;
.source "Routes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/audio/policy/configuration/V7_0/Routes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Route"
.end annotation


# instance fields
.field private blacklist sink:Ljava/lang/String;

.field private blacklist sources:Ljava/lang/String;

.field private blacklist type:Landroid/audio/policy/configuration/V7_0/MixType;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Routes$Route;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/Routes$Route;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Routes$Route;-><init>()V

    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/MixType;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/MixType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Routes$Route;->setType(Landroid/audio/policy/configuration/V7_0/MixType;)V

    :cond_0
    const-string/jumbo v1, "sink"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Routes$Route;->setSink(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v1, "sources"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Routes$Route;->setSources(Ljava/lang/String;)V

    :cond_2
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getSink()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sink:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSources()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sources:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getType()Landroid/audio/policy/configuration/V7_0/MixType;
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->type:Landroid/audio/policy/configuration/V7_0/MixType;

    return-object p0
.end method

.method blacklist hasSink()Z
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sink:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method blacklist hasSources()Z
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sources:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method blacklist hasType()Z
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->type:Landroid/audio/policy/configuration/V7_0/MixType;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist setSink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sink:Ljava/lang/String;

    return-void
.end method

.method public blacklist setSources(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sources:Ljava/lang/String;

    return-void
.end method

.method public blacklist setType(Landroid/audio/policy/configuration/V7_0/MixType;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->type:Landroid/audio/policy/configuration/V7_0/MixType;

    return-void
.end method
