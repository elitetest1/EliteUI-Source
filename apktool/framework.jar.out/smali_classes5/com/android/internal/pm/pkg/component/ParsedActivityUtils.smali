.class public Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;
.super Ljava/lang/Object;
.source "ParsedActivityUtils.java"


# static fields
.field public static final blacklist LOG_UNSAFE_BROADCASTS:Z = false

.field private static final blacklist RECREATE_ON_CONFIG_CHANGES_MASK:I = 0x3

.field public static final blacklist SAFE_BROADCASTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->SAFE_BROADCASTS:Ljava/util/Set;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getActivityConfigChanges(II)I
    .locals 0

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method private static blacklist getActivityResizeMode(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;I)I
    .locals 4

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getResizeableActivity()Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isResizeableActivityViaSdkVersion()Z

    move-result p0

    if-eqz p0, :cond_1

    return v3

    :cond_1
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/16 p0, 0xe

    if-ne p2, p0, :cond_4

    const/4 p0, 0x7

    return p0

    :cond_4
    const/4 p0, 0x4

    return p0

    :cond_5
    :goto_0
    const/4 p0, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    move v3, p0

    :goto_1
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p0, 0x2

    :cond_7
    return p0
.end method

.method public static blacklist parseActivityAlias(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v10, p5

    const-string v0, "Empty class name in package "

    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v1, 0x7

    const/16 v4, 0x400

    :try_start_0
    invoke-virtual {v5, v1, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "<activity-alias> does not specify android:targetActivity"

    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_1
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    const/16 v24, 0x0

    move/from16 v6, v24

    :goto_0
    if-ge v6, v4, :cond_3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<activity-alias> target activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found in manifest with activities = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p0 .. p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parsedActivities = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_4
    :try_start_3
    invoke-static {v1, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->makeAlias(Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v22, 0xc

    const/16 v23, 0xf

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v11, 0xa

    const/4 v12, 0x6

    const/4 v13, -0x1

    const/4 v14, 0x4

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x2

    const/16 v19, -0x1

    const/16 v20, 0xb

    const/16 v21, -0x1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object v2, v0

    move-object v3, v1

    move-object v6, v5

    move-object/from16 v5, p0

    :try_start_4
    invoke-static/range {v2 .. v23}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, v6

    :try_start_5
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_5
    :try_start_6
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    const/16 v24, 0x1

    :cond_6
    move/from16 v8, v24

    const/4 v11, 0x3

    const/4 v12, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v10, 0x9

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v9, p5

    move-object v0, v2

    move-object v2, v3

    move-object/from16 v3, p2

    invoke-static/range {v0 .. v12}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityOrAlias(Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v5, v6

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static blacklist parseActivityOrAlias(Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Ljava/lang/String;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/TypedArray;",
            "ZZZ",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "III)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v5, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v6, p9

    move/from16 v0, p12

    const/16 v1, 0x400

    move/from16 v2, p10

    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Activity "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " specified invalid parentActivityName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageParsing"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setParentActivityName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    :cond_1
    :goto_0
    const/4 v8, 0x0

    move/from16 v1, p11

    invoke-virtual {v7, v1, v8}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz p7, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    :goto_2
    if-eqz p7, :cond_4

    const/16 v1, 0xe

    goto :goto_3

    :cond_4
    const/16 v1, 0x3d

    :goto_3
    invoke-static {v7, v4, v1, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->parseKnownActivityEmbeddingCerts(Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v6, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_6

    invoke-virtual {p0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    :cond_6
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    :cond_7
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    :cond_8
    :goto_4
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v10, :cond_12

    :cond_9
    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v0

    invoke-virtual {v0, p1, v5}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent-filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    xor-int/lit8 v2, p6, 0x1

    move-object v1, p0

    move-object v0, p1

    move/from16 v3, p8

    invoke-static/range {v0 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseIntentFilter(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/IntentFilter;->getOrder()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getOrder()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setOrder(I)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    invoke-virtual {p0, v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->addIntent(Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;)V

    goto/16 :goto_5

    :cond_c
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {p0, p1, v4, v5, v6}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addMetaData(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    goto/16 :goto_5

    :cond_d
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "property"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {p0, p1, v4, v5, v6}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addProperty(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    goto :goto_5

    :cond_e
    if-nez p6, :cond_f

    if-nez p7, :cond_f

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "preferred"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    move-object v1, p0

    move-object v0, p1

    move/from16 v3, p8

    invoke-static/range {v0 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseIntentFilter(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v11, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addPreferredActivityFilter(Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_5

    :cond_f
    if-nez p6, :cond_10

    if-nez p7, :cond_10

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {v4, v5, v6}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityWindowLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setWindowLayout(Landroid/content/pm/ActivityInfo$WindowLayout;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    goto :goto_5

    :cond_10
    invoke-static {p2, p1, v5, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    :cond_11
    :goto_5
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v6, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_12
    if-nez p7, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getLaunchMode()I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "android.activity.launch_mode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string/jumbo v2, "singleInstancePerTask"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0, p2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    :cond_13
    if-nez p7, :cond_15

    const/16 p1, 0x3b

    invoke-virtual {v7, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    const-string v2, "android.can_display_on_remote_devices"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_14

    move p1, v8

    :cond_14
    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result p1

    const/high16 p2, 0x10000

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    :cond_15
    invoke-static {p0, v6}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->resolveActivityWindowLayout(Lcom/android/internal/pm/pkg/component/ParsedActivity;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-eqz p2, :cond_16

    invoke-interface {v6, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_16
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setWindowLayout(Landroid/content/pm/ActivityInfo$WindowLayout;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    if-nez v9, :cond_19

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getIntents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_17

    move v8, v1

    :cond_17
    if-eqz v8, :cond_18

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": Targeting S+ (version 31 and above) requires that an explicit value for android:exported be defined when intent filters are present"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/32 v1, 0x8f45e27

    invoke-interface {v6, p1, v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-interface {v6, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_18
    invoke-virtual {p0, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    :cond_19
    invoke-interface {v6, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseActivityOrReceiver([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "IZ",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;-><init>()V

    const-string/jumbo v1, "receiver"

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v22, 0x39

    const/16 v23, 0x42

    const/16 v11, 0x1e

    const/16 v12, 0x11

    const/16 v13, 0x2a

    const/4 v14, 0x5

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x17

    const/16 v18, 0x3

    const/16 v19, 0x7

    const/16 v20, 0x2c

    const/16 v21, 0x30

    move-object/from16 v5, p1

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object v6, v4

    move-object/from16 v4, p0

    :try_start_0
    invoke-static/range {v2 .. v23}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    move-object v9, v10

    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v9, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isSaveStateDisallowed()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "Heavy-weight applications can not have receivers in main process"

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v6, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setTheme(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUiOptions()I

    move-result v8

    const/16 v10, 0x1a

    invoke-virtual {v6, v10, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setUiOptions(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v7

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isTaskReparentingAllowed()Z

    move-result v8

    const/16 v10, 0x40

    const/16 v11, 0x13

    invoke-static {v10, v11, v8, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v8

    const/16 v11, 0x12

    const/16 v12, 0x8

    invoke-static {v12, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v11

    or-int/2addr v8, v11

    const/16 v11, 0xb

    const/4 v13, 0x4

    invoke-static {v13, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v11

    or-int/2addr v8, v11

    const/16 v11, 0xd

    const/16 v14, 0x20

    invoke-static {v14, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v11

    or-int/2addr v8, v11

    const/16 v11, 0x100

    const/16 v15, 0x16

    invoke-static {v11, v15, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v11

    or-int/2addr v8, v11

    const/16 v11, 0xa

    const/4 v15, 0x2

    invoke-static {v15, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v11

    or-int/2addr v8, v11

    const/16 v11, 0x800

    const/16 v12, 0x18

    invoke-static {v11, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v11

    or-int/2addr v8, v11

    const/16 v11, 0x9

    const/4 v12, 0x1

    invoke-static {v12, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v11

    or-int/2addr v8, v11

    const/16 v11, 0x80

    const/16 v13, 0x15

    invoke-static {v11, v13, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v11

    or-int/2addr v8, v11

    const/16 v11, 0x27

    const/16 v13, 0x400

    invoke-static {v13, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v11

    or-int/2addr v8, v11

    const/16 v11, 0x1d

    invoke-static {v13, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v11

    or-int/2addr v8, v11

    const/16 v11, 0xc

    const/16 v13, 0x10

    invoke-static {v13, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v11

    or-int/2addr v8, v11

    const/high16 v11, 0x20000000

    invoke-static {v11, v10, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    or-int/2addr v7, v8

    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    if-nez v1, :cond_6

    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v7

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isHardwareAccelerated()Z

    move-result v8

    const/16 v10, 0x200

    const/16 v11, 0x19

    invoke-static {v10, v11, v8, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v8

    const/high16 v10, -0x80000000

    const/16 v11, 0x1f

    invoke-static {v10, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    const/high16 v10, 0x40000

    const/16 v11, 0x43

    invoke-static {v10, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    const/16 v10, 0x2000

    const/16 v11, 0x23

    invoke-static {v10, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    const/16 v10, 0x1000

    const/16 v11, 0x24

    invoke-static {v10, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    const/16 v10, 0x4000

    const/16 v11, 0x25

    invoke-static {v10, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    const/high16 v10, 0x800000

    const/16 v11, 0x33

    invoke-static {v10, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    const/high16 v10, 0x400000

    const/16 v11, 0x29

    invoke-static {v10, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    const/high16 v10, 0x1000000

    const/16 v11, 0x34

    invoke-static {v10, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    const/high16 v10, 0x2000000

    const/16 v11, 0x38

    invoke-static {v10, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    or-int/2addr v7, v8

    const/high16 v8, 0x10000000

    const/16 v10, 0x3c

    invoke-static {v8, v10, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getPrivateFlags()I

    move-result v7

    const/16 v8, 0x36

    invoke-static {v12, v8, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v8

    const/16 v10, 0x3a

    invoke-static {v15, v10, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    or-int/2addr v7, v8

    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPrivateFlags(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    const/16 v7, 0x31

    invoke-virtual {v6, v7, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setColorMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    const/16 v8, 0x21

    invoke-virtual {v6, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setDocumentLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    const/16 v8, 0xe

    invoke-virtual {v6, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    const/16 v8, 0x26

    invoke-virtual {v6, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setLockTaskLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result v8

    const/16 v10, 0x22

    invoke-virtual {v6, v10, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setMaxRecents(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    invoke-virtual {v6, v14, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPersistableMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    const/16 v8, 0x2b

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setRequestedVrComponent(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    const/16 v8, 0x2e

    const/4 v10, -0x1

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setRotationAnimation(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    const/16 v8, 0x14

    invoke-virtual {v6, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setSoftInputMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    invoke-virtual {v6, v13, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/16 v11, 0x2f

    invoke-virtual {v6, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-static {v8, v11}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->getActivityConfigChanges(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setConfigChanges(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    const/16 v7, 0xf

    invoke-virtual {v6, v7, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->getActivityResizeMode(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;I)I

    move-result v8

    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setScreenOrientation(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setResizeMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    const/16 v7, 0x32

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_2

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v10

    const/4 v13, 0x4

    if-ne v10, v13, :cond_2

    invoke-virtual {v6, v7, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    invoke-virtual {v2, v8, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setMaxAspectRatio(IF)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    :cond_2
    const/16 v7, 0x35

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v10

    const/4 v13, 0x4

    if-ne v10, v13, :cond_4

    invoke-virtual {v6, v7, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    invoke-virtual {v2, v8, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setMinAspectRatio(IF)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    goto :goto_0

    :cond_3
    const/4 v13, 0x4

    :cond_4
    :goto_0
    const/16 v7, 0x3e

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6, v7, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getPrivateFlags()I

    move-result v8

    if-eqz v7, :cond_5

    goto :goto_1

    :cond_5
    const/16 v13, 0x8

    :goto_1
    or-int v7, v8, v13

    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPrivateFlags(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v4}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setConfigChanges(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v8

    const/high16 v10, 0x40000000    # 2.0f

    const/16 v11, 0x1c

    invoke-static {v10, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    :cond_7
    :goto_2
    const/16 v7, 0x400

    const/16 v8, 0x8

    invoke-virtual {v6, v8, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTaskAffinity()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v7, v9}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_8
    :try_start_3
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    const/16 v0, 0x2d

    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v0

    const/high16 v7, 0x100000

    or-int/2addr v0, v7

    invoke-virtual {v2, v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    invoke-interface {v5, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_9
    const/16 v0, 0x3f

    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v0, v4, v4}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    const-string/jumbo v0, "requiredDisplayCategory attribute can only consist of alphanumeric characters, \'_\', and \'.\'"

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_a
    :try_start_4
    invoke-virtual {v2, v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setRequiredDisplayCategory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    const/16 v0, 0x41

    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setRequireContentUriPermissionFromCaller(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v11, 0x4

    const/4 v12, 0x6

    const/4 v7, 0x0

    const/16 v10, 0x1b

    move-object v0, v6

    move v6, v1

    move-object v1, v5

    move-object v5, v0

    move-object/from16 v4, p2

    move-object v0, v2

    move-object v2, v3

    move-object/from16 v3, p3

    :try_start_5
    invoke-static/range {v0 .. v12}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityOrAlias(Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v6, v5

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v6, v5

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_3
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static blacklist parseActivityWindowLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, v4, v4, v3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    move v0, v2

    move v2, p1

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    move v0, v2

    move v2, v3

    goto :goto_1

    :cond_1
    move v0, v2

    move v2, v3

    :goto_0
    move p1, v5

    :goto_1
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v7

    if-ne v7, v1, :cond_2

    invoke-virtual {p0, v6, v4, v4, v3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v3

    goto :goto_2

    :cond_2
    if-ne v7, v0, :cond_3

    invoke-virtual {p0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    move v9, v3

    move v3, v1

    move v1, v4

    move v4, v9

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v4

    move v4, v3

    move v3, v5

    :goto_3
    const/16 v6, 0x11

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/4 v8, 0x2

    invoke-virtual {p0, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {p0, v0, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    move v7, v5

    move v5, v6

    move v6, v1

    move v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIIILjava/lang/String;)V

    invoke-interface {p2, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private static blacklist parseIntentFilter(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;",
            "ZZ",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    move-object v0, p1

    move v7, p2

    move v4, p3

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v9, p6

    invoke-static/range {v0 .. v9}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseIntentFilter(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {v9, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result p3

    const/high16 p4, 0x100000

    or-int/2addr p3, p4

    invoke-virtual {p1, p3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    :cond_1
    invoke-virtual {p2}, Landroid/content/IntentFilter;->isImplicitlyVisibleToInstantApp()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result p2

    const/high16 p3, 0x200000

    or-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    :cond_2
    invoke-interface {v9, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist resolveActivityWindowLayout(Lcom/android/internal/pm/pkg/component/ParsedActivity;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.activity_window_layout_affinity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p0

    if-nez p0, :cond_2

    new-instance v2, Landroid/content/pm/ActivityInfo$WindowLayout;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIIILjava/lang/String;)V

    move-object p0, v2

    goto :goto_0

    :cond_2
    iput-object v10, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    :goto_0
    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method
