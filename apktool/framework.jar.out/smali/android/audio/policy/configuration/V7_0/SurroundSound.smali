.class public Landroid/audio/policy/configuration/V7_0/SurroundSound;
.super Ljava/lang/Object;
.source "SurroundSound.java"


# instance fields
.field private blacklist formats:Landroid/audio/policy/configuration/V7_0/SurroundFormats;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/SurroundSound;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/SurroundSound;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/SurroundSound;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "formats"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/SurroundFormats;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/SurroundFormats;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/SurroundSound;->setFormats(Landroid/audio/policy/configuration/V7_0/SurroundFormats;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    return-object v0

    :cond_3
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "SurroundSound is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getFormats()Landroid/audio/policy/configuration/V7_0/SurroundFormats;
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/SurroundSound;->formats:Landroid/audio/policy/configuration/V7_0/SurroundFormats;

    return-object p0
.end method

.method blacklist hasFormats()Z
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/SurroundSound;->formats:Landroid/audio/policy/configuration/V7_0/SurroundFormats;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist setFormats(Landroid/audio/policy/configuration/V7_0/SurroundFormats;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/SurroundSound;->formats:Landroid/audio/policy/configuration/V7_0/SurroundFormats;

    return-void
.end method
