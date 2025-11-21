.class public Lcom/samsung/android/wallpaperbackup/XmlParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlParser.java"


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist mCurrentElement:Z

.field private blacklist mCurrentValue:Ljava/lang/String;

.field private blacklist mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

.field private blacklist mItemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wallpaperbackup/WallpaperUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "xml file is not exists. "

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string v1, "XmlParser"

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentElement:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItemsList:Ljava/util/ArrayList;

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    invoke-interface {v3, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p0, Lorg/xml/sax/InputSource;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v3, p0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, p1

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v2, p1

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v2, p1

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v2, p1

    goto :goto_3

    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    return-void

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_3
    move-exception p0

    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_4

    :catch_4
    move-exception p0

    :goto_2
    :try_start_6
    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    :catch_5
    move-exception p0

    :goto_3
    :try_start_8
    invoke-virtual {p0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_1

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_4

    :catch_6
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    return-void

    :goto_5
    if-eqz v2, :cond_2

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_6

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_6
    throw p0
.end method


# virtual methods
.method public whitelist test-api characters([CII)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentElement:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentElement:Z

    const-string/jumbo p1, "width"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setWidth(I)V

    return-void

    :cond_0
    const-string p1, "height"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setHeight(I)V

    return-void

    :cond_1
    const-string/jumbo p1, "transparency"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setTransparency(I)V

    return-void

    :cond_2
    const-string p1, "devicetype"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setDeviceType(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string/jumbo p1, "path"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setPath(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p1, "component"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setComponent(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string/jumbo p1, "wpType"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setWpType(I)V

    return-void

    :cond_6
    const-string/jumbo p1, "uri"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setUri(Landroid/net/Uri;)V

    return-void

    :cond_7
    const-string p1, "externalParams"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setExternalParams(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string p1, "componentname"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setComponentName(Ljava/lang/String;)V

    return-void

    :cond_9
    const-string p1, "isHomeAndLockPaired"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setIsHomeAndLockPaired(Z)V

    return-void

    :cond_a
    const-string/jumbo p1, "orientation"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setOrientation(I)V

    return-void

    :cond_b
    const-string/jumbo p1, "tiltSetting"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setTiltSettingValue(I)V

    return-void

    :cond_c
    const-string p1, "left"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setLeftValue(I)V

    return-void

    :cond_d
    const-string/jumbo p1, "top"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setTopValue(I)V

    return-void

    :cond_e
    const-string/jumbo p1, "right"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setRightValue(I)V

    return-void

    :cond_f
    const-string p1, "bottom"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setBottomValue(I)V

    return-void

    :cond_10
    const-string/jumbo p1, "rotation"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setRotationValue(I)V

    return-void

    :cond_11
    const-string p1, "covertype"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setCoverType(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public blacklist getItemsList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wallpaperbackup/WallpaperUser;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItemsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist getObject()Lcom/samsung/android/wallpaperbackup/WallpaperUser;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    return-object p0
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentElement:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    const-string p1, "User"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    invoke-direct {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
