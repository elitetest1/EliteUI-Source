.class public Lcom/samsung/android/fontutil/TypefaceParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TypefaceParser.java"


# static fields
.field private static final blacklist ATTR_NAME:Ljava/lang/String; = "displayname"

.field private static final blacklist NODE_DROIDNAME:Ljava/lang/String; = "droidname"

.field private static final blacklist NODE_FILE:Ljava/lang/String; = "file"

.field private static final blacklist NODE_FILENAME:Ljava/lang/String; = "filename"

.field private static final blacklist NODE_FONT:Ljava/lang/String; = "font"

.field private static final blacklist NODE_MONOSPACE:Ljava/lang/String; = "monospace"

.field private static final blacklist NODE_SANS:Ljava/lang/String; = "sans"

.field private static final blacklist NODE_SERIF:Ljava/lang/String; = "serif"


# instance fields
.field private blacklist in_droidname:Z

.field private blacklist in_filename:Z

.field private blacklist in_monospace:Z

.field private blacklist in_sans:Z

.field private blacklist in_serif:Z

.field private blacklist mFont:Lcom/samsung/android/fontutil/SemTypeface;

.field private blacklist mFontFile:Lcom/samsung/android/fontutil/TypefaceFile;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_sans:Z

    iput-boolean v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_serif:Z

    iput-boolean v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_monospace:Z

    iput-boolean v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_filename:Z

    iput-boolean v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_droidname:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFont:Lcom/samsung/android/fontutil/SemTypeface;

    iput-object v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFontFile:Lcom/samsung/android/fontutil/TypefaceFile;

    return-void
.end method


# virtual methods
.method public whitelist test-api characters([CII)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_filename:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFontFile:Lcom/samsung/android/fontutil/TypefaceFile;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/fontutil/TypefaceFile;->setFileName(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_droidname:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFontFile:Lcom/samsung/android/fontutil/TypefaceFile;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/fontutil/TypefaceFile;->setDroidName(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public whitelist test-api endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "font"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "sans"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    iput-boolean p3, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_sans:Z

    return-void

    :cond_1
    const-string/jumbo p1, "serif"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean p3, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_serif:Z

    return-void

    :cond_2
    const-string/jumbo p1, "monospace"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean p3, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_monospace:Z

    return-void

    :cond_3
    const-string p1, "file"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFontFile:Lcom/samsung/android/fontutil/TypefaceFile;

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_sans:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFont:Lcom/samsung/android/fontutil/SemTypeface;

    iget-object p1, p1, Lcom/samsung/android/fontutil/SemTypeface;->mSansFonts:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFontFile:Lcom/samsung/android/fontutil/TypefaceFile;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_serif:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFont:Lcom/samsung/android/fontutil/SemTypeface;

    iget-object p1, p1, Lcom/samsung/android/fontutil/SemTypeface;->mSerifFonts:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFontFile:Lcom/samsung/android/fontutil/TypefaceFile;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    iget-boolean p1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_monospace:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFont:Lcom/samsung/android/fontutil/SemTypeface;

    iget-object p1, p1, Lcom/samsung/android/fontutil/SemTypeface;->mMonospaceFonts:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFontFile:Lcom/samsung/android/fontutil/TypefaceFile;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    const-string p1, "filename"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean p3, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_filename:Z

    return-void

    :cond_7
    const-string p1, "droidname"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iput-boolean p3, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_droidname:Z

    :cond_8
    :goto_0
    return-void
.end method

.method public blacklist getParsedData()Lcom/samsung/android/fontutil/SemTypeface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFont:Lcom/samsung/android/fontutil/SemTypeface;

    return-object p0
.end method

.method public whitelist test-api startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/fontutil/SemTypeface;

    invoke-direct {v0}, Lcom/samsung/android/fontutil/SemTypeface;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFont:Lcom/samsung/android/fontutil/SemTypeface;

    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "font"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "displayname"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFont:Lcom/samsung/android/fontutil/SemTypeface;

    invoke-virtual {p0, p1}, Lcom/samsung/android/fontutil/SemTypeface;->setName(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo p1, "sans"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    iput-boolean p3, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_sans:Z

    return-void

    :cond_1
    const-string/jumbo p1, "serif"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean p3, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_serif:Z

    return-void

    :cond_2
    const-string/jumbo p1, "monospace"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean p3, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_monospace:Z

    return-void

    :cond_3
    const-string p1, "file"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/samsung/android/fontutil/TypefaceFile;

    invoke-direct {p1}, Lcom/samsung/android/fontutil/TypefaceFile;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFontFile:Lcom/samsung/android/fontutil/TypefaceFile;

    return-void

    :cond_4
    const-string p1, "filename"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean p3, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_filename:Z

    return-void

    :cond_5
    const-string p1, "droidname"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput-boolean p3, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_droidname:Z

    :cond_6
    return-void
.end method
