.class public Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;
.super Ljava/lang/Object;
.source "MetaDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/wallpapertheme/MetaDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetaData"
.end annotation


# static fields
.field private static final blacklist ATTR_DEFAULT_VALUE:Ljava/lang/String; = "DefaultValue"

.field private static final blacklist ATTR_DEST_ATTR_NAME:Ljava/lang/String; = "DestAttribName"

.field private static final blacklist ATTR_NAME:Ljava/lang/String; = "Name"

.field private static final blacklist ATTR_OPACITY:Ljava/lang/String; = "Opacity"

.field private static final blacklist ATTR_TARGET_PKG_NAME:Ljava/lang/String; = "TargetPackageName"

.field private static final blacklist ATTR_UID:Ljava/lang/String; = "UID"

.field private static final blacklist ATTR_VALUE_REF:Ljava/lang/String; = "ValueRef"

.field private static final blacklist ATTR_VALUE_TYPE:Ljava/lang/String; = "ValueType"

.field private static final blacklist TAG:Ljava/lang/String; = "SWT_MetaData"

.field private static final blacklist TAG_APP_METADATA:Ljava/lang/String; = "AppMetaData"

.field private static final blacklist TAG_INCLUDE:Ljava/lang/String; = "Include"

.field private static final blacklist TAG_PROPERTY:Ljava/lang/String; = "Property"


# instance fields
.field private blacklist mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

.field private blacklist mRpUID:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/content/om/wallpapertheme/MetaDataManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/om/wallpapertheme/MetaDataManager;Landroid/content/res/XmlResourceParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Landroid/content/om/wallpapertheme/MetaDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    iput-object p1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p0, "SWT_MetaData"

    const-string p1, "creating metadata is failed - xmlParser is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2}, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist addSeslMetaData()V
    .locals 1

    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    invoke-virtual {v0}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getUidList()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Landroid/content/om/wallpapertheme/MetaDataManager;

    invoke-static {p0}, Landroid/content/om/wallpapertheme/MetaDataManager;->-$$Nest$fgetmPackageList(Landroid/content/om/wallpapertheme/MetaDataManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    invoke-virtual {p0}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getUidList()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private blacklist addUID(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9

    const-string v0, "UID"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "ValueType"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "DestAttribName"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "DefaultValue"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "ValueRef"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "Opacity"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string p1, "SWT_MetaData"

    if-nez v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Parsing xml error, uid is empty. destAttributeName : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;

    invoke-direct/range {v2 .. v8}, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    invoke-virtual {v0, v2}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->addUid(Landroid/content/om/wallpapertheme/MetaDataManager$Uid;)V

    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    invoke-virtual {v0}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Landroid/content/om/wallpapertheme/MetaDataManager;

    invoke-static {v1}, Landroid/content/om/wallpapertheme/MetaDataManager;->-$$Nest$fgetmRpUidMap(Landroid/content/om/wallpapertheme/MetaDataManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Landroid/content/om/wallpapertheme/MetaDataManager;

    invoke-static {v1}, Landroid/content/om/wallpapertheme/MetaDataManager;->-$$Nest$fgetmRpUidMap(Landroid/content/om/wallpapertheme/MetaDataManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Abnormal metadata replacement attempts detected, RpUid : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", existed package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Landroid/content/om/wallpapertheme/MetaDataManager;

    invoke-static {v2}, Landroid/content/om/wallpapertheme/MetaDataManager;->-$$Nest$fgetmRpUidMap(Landroid/content/om/wallpapertheme/MetaDataManager;)Ljava/util/HashMap;

    move-result-object v2

    iget-object p0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", requested package : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Landroid/content/om/wallpapertheme/MetaDataManager;

    invoke-static {p1}, Landroid/content/om/wallpapertheme/MetaDataManager;->-$$Nest$fgetmRpUidMap(Landroid/content/om/wallpapertheme/MetaDataManager;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private blacklist getPackage(Ljava/lang/String;)Landroid/content/om/wallpapertheme/MetaDataManager$Package;
    .locals 3

    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Landroid/content/om/wallpapertheme/MetaDataManager;

    invoke-static {v0}, Landroid/content/om/wallpapertheme/MetaDataManager;->-$$Nest$fgetmPackageList(Landroid/content/om/wallpapertheme/MetaDataManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    invoke-virtual {v1}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    new-instance v0, Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    invoke-direct {v0, p1}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Landroid/content/om/wallpapertheme/MetaDataManager;

    invoke-static {p0}, Landroid/content/om/wallpapertheme/MetaDataManager;->-$$Nest$fgetmPackageList(Landroid/content/om/wallpapertheme/MetaDataManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private blacklist parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppMetaData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Name"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TargetPackageName"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object v1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    const-string v1, "Multi window"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->getPackage(Ljava/lang/String;)Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    move-result-object p1

    iput-object p1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->getPackage(Ljava/lang/String;)Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    move-result-object p1

    iput-object p1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    return-void

    :cond_1
    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Property"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->addUID(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void

    :cond_2
    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Include"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->addSeslMetaData()V

    :cond_3
    return-void
.end method


# virtual methods
.method public blacklist getCurrentPackage()Landroid/content/om/wallpapertheme/MetaDataManager$Package;
    .locals 0

    iget-object p0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    return-object p0
.end method

.method blacklist getRpUID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    return-object p0
.end method
