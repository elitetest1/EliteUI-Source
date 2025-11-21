.class public Lcom/sec/android/iaft/IAFDHCDatabase;
.super Ljava/lang/Object;
.source "IAFDHCDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/IAFDHCDatabase$IAFDHCDatabaseHolder;
    }
.end annotation


# static fields
.field private static final blacklist IAFDHCDBVersion:I = 0x5


# instance fields
.field private blacklist mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/sec/android/iaft/IAFDHCDatabase-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDHCDatabase;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/sec/android/iaft/IAFDHCDatabase;
    .locals 1

    invoke-static {}, Lcom/sec/android/iaft/IAFDHCDatabase$IAFDHCDatabaseHolder;->-$$Nest$sfgetINSTANCE()Lcom/sec/android/iaft/IAFDHCDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    return-object p0
.end method

.method public blacklist getHCDBversion()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method blacklist init(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 36

    move-object/from16 v0, p0

    new-instance v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    invoke-direct {v1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;-><init>()V

    iput-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    new-instance v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/16 v9, 0x100

    const/16 v10, 0x200

    const/4 v3, 0x1

    const/16 v4, 0x800

    const-string v5, "at "

    const/16 v6, 0x400

    const/16 v7, 0x400

    const-string v8, "#00 pc "

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;-><init>(ZILjava/lang/String;IILjava/lang/String;II)V

    iput-object v2, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setDBVersion(I)V

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v1, 0x1c

    new-array v1, v1, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    new-instance v3, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v4, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v11, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object/from16 v16, v7

    const-string v7, "ClassCastException"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, v16

    invoke-direct/range {v3 .. v11}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    move-object v7, v6

    const/4 v11, 0x0

    aput-object v3, v1, v11

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v3, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v3, v3, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/4 v14, 0x2

    const/16 v15, 0x1c

    const-string v17, "TransactionTooLargeException"

    const/16 v18, 0x0

    const-string/jumbo v19, "supportFlag>,<3"

    const/16 v20, 0x1

    move-object/from16 v21, v3

    move-object/from16 v16, v7

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    aput-object v13, v1, v12

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v3, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v3, v3, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/4 v15, 0x2

    const-string v17, "IndexOutOfBoundsException"

    const/16 v19, 0x0

    const/16 v20, 0x2

    move-object/from16 v21, v3

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/4 v3, 0x2

    aput-object v13, v1, v3

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v4, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const-string v17, "ArrayIndexOutOfBoundsException"

    const/16 v20, 0x3

    move-object/from16 v21, v4

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v22, 0x3

    aput-object v13, v1, v22

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v4, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const-string v17, "StringIndexOutOfBoundsException"

    const/16 v20, 0x4

    move-object/from16 v21, v4

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v23, 0x4

    aput-object v13, v1, v23

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v4, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/4 v15, 0x7

    const-string v17, "ClassNotFoundException"

    const/16 v20, 0x5

    move-object/from16 v21, v4

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    aput-object v13, v1, v2

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v4, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const-string v17, "NoClassDefFoundError"

    const-string/jumbo v19, "supportFlag>,<3"

    const/16 v20, 0x6

    move-object/from16 v21, v4

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v24, 0x6

    aput-object v13, v1, v24

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v4, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v15, 0x8

    const-string v17, "ArithmeticException"

    const/16 v19, 0x0

    const/16 v20, 0x7

    move-object/from16 v21, v4

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v25, 0x7

    aput-object v13, v1, v25

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v4, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v15, 0x1a

    const-string v17, "JNI_ERR"

    const-string v18, ""

    const/16 v20, 0x8

    move-object/from16 v21, v4

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v26, 0x8

    aput-object v13, v1, v26

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v4, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v15, 0xc

    const-string v17, "ExceptionInInitializerError"

    const/16 v18, 0x0

    const/16 v20, 0x9

    move-object/from16 v21, v4

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v27, 0x9

    aput-object v13, v1, v27

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v4, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v15, 0xd

    const-string v17, "InternalError"

    const/16 v20, 0xa

    move-object/from16 v21, v4

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v28, 0xa

    aput-object v13, v1, v28

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v4, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v15, 0xe

    const-string v17, "StackOverflowError"

    const/16 v20, 0xb

    move-object/from16 v21, v4

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v29, 0xb

    aput-object v13, v1, v29

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v4, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v15, 0xf

    const-string v17, "android.content.res.Resources$NotFoundException"

    const/16 v20, 0xc

    move-object/from16 v21, v4

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v30, 0xc

    aput-object v13, v1, v30

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v4, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v15, 0x14

    const-string v17, "IllegalArgumentException"

    const/16 v20, 0xd

    move-object/from16 v21, v4

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v31, 0xd

    aput-object v13, v1, v31

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v4, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const-string v17, "InvalidParameterException"

    const/16 v20, 0xe

    move-object/from16 v21, v4

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v32, 0xe

    aput-object v13, v1, v32

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v4, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v15, 0x1d

    const-string v17, "SuperNotCalledException"

    const/16 v20, 0xf

    move-object/from16 v21, v4

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v4, 0xf

    aput-object v13, v1, v4

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v5, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v5, v5, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/4 v15, 0x4

    const-string v17, "IllegalStateException"

    const/16 v20, 0x10

    move-object/from16 v21, v5

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v5, 0x10

    aput-object v13, v1, v5

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v6, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v6, v6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/4 v15, 0x6

    const-string v17, "NumberFormatException"

    const/16 v20, 0x11

    move-object/from16 v21, v6

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v33, 0x11

    aput-object v13, v1, v33

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v6, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v6, v6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v15, 0x9

    const-string v17, "NoSuchMethodException"

    const/16 v20, 0x12

    move-object/from16 v21, v6

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v34, 0x12

    aput-object v13, v1, v34

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v6, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v6, v6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v15, 0xb

    const-string v17, "PackageManager$NameNotFoundException"

    const/16 v20, 0x13

    move-object/from16 v21, v6

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v35, 0x13

    aput-object v13, v1, v35

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v6, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v6, v6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/4 v15, 0x3

    const-string v17, "ActivityNotFoundException"

    const/16 v20, 0x14

    move-object/from16 v21, v6

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v6, 0x14

    aput-object v13, v1, v6

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v8, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v8, v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v15, 0x13

    const-string v17, "MissingWebViewPackageException"

    const-string v18, "libs>,<Failed to load WebView provider: No WebView installed"

    const-string/jumbo v19, "supportFlag>,<3"

    const/16 v20, 0x15

    move-object/from16 v21, v8

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v8, 0x15

    aput-object v13, v1, v8

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v8, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v8, v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/4 v15, 0x5

    const-string v17, "SecurityException"

    const-string v18, "libs>,<no longer supported>,<not exported from uid"

    const/16 v19, 0x0

    const/16 v20, 0x16

    move-object/from16 v21, v8

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v8, 0x16

    aput-object v13, v1, v8

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v8, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v8, v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v15, 0x10

    const-string v17, "InflateException"

    const/16 v18, 0x0

    const/16 v20, 0x17

    move-object/from16 v21, v8

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v8, 0x17

    aput-object v13, v1, v8

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v8, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v8, v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v15, 0x16

    const-string v17, "invocationtargetexception"

    const/16 v20, 0x18

    move-object/from16 v21, v8

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v8, 0x18

    aput-object v13, v1, v8

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v8, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v8, v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v15, 0x22

    const-string v17, "SQLiteFullException"

    const-string v18, "libs>,<database or disk is full"

    const-string/jumbo v19, "supportFlag>,<3"

    const/16 v20, 0x19

    move-object/from16 v21, v8

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v8, 0x19

    aput-object v13, v1, v8

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v8, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v8, v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v15, 0x19

    const-string v17, "OutOfMemoryError"

    const-string v18, "32bit"

    const/16 v19, 0x0

    const/16 v20, 0x1a

    move-object/from16 v21, v8

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v8, 0x1a

    aput-object v13, v1, v8

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v8, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v8, v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/4 v15, 0x0

    const-string v17, "NullPointerException"

    const-string/jumbo v18, "pkgName"

    const/16 v20, 0x1b

    move-object/from16 v21, v8

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v8, 0x1b

    aput-object v13, v1, v8

    iget-object v8, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iput-object v1, v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v8, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setenableDetectAll32bitApp(Ljava/lang/Boolean;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const-string v8, "/data/app/"

    invoke-virtual {v1, v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setreMovableAppPaths(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const-string v8, "com.google.android.webview"

    invoke-virtual {v1, v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setwebView_pkgName(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const-string v8, "0"

    const-string v9, "CHZ>,<CHN>,<CHM>,<CHU>,<CTC>,<CHC>,<BNZ>,<CBK"

    move-object/from16 v10, p2

    invoke-virtual {v1, v8, v9, v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setCSCFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const-string v8, "android.app.stubs>,<com.android.cts>,<com.android.test>,<com.android.app1>,<com.android.app2>,<com.android.app3"

    const-string v9, "1"

    invoke-virtual {v1, v9, v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setWhiteList(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const-string v8, "Repair>,<CHNONLY"

    move/from16 v10, p3

    invoke-virtual {v1, v9, v8, v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setIAFDDBControlFeature(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const-string/jumbo v8, "pairlinks>,<1400403000>,<null>,</tips->,<-321-0.html>,<zh>,<27_NoCheckUpdate_NoOneKey_onejump>,<1500170>,<1500170>,<34_NoCheckUpdate_NoOneKey_onejump>,<1490506>,<1490506>,<35_onekey_NoCheckUpdate>,<1500223>,<1500223"

    invoke-virtual {v1, v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->sethashMapOfLinkForVocApp(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const-string v8, "OnlyShowList>,<1400701000>,<com.csii.qujing.mobilebank>,<1614570>,<1614570>,<cn.com.nxy.mbank.hlj>,<1655654>,<1655654>,<com.nxy.mobilebank.hlj>,<1655654>,<1655654>,<com.nxy.mobilebank.hunan>,<1655659>,<1655659>,<cn.com.nxy.mbank.shanxi>,<1720535>,<1720535>,<com.cn.froad.mobileplatform>,<1720398>,<1720398>,<com.yitong.mbank.g>,<1720485>,<1720485>,<cn.com.nxy.mbank.hebei>,<1720498>,<1720498>,<com.sxnxs.mbank>,<1721309>,<1721309>,<io.github.nekoinverter.ehviewer>,<1721428>,<1721428>,<com.ss.android.ugc.aweme:;Only32bit>,<1720427>,<1720427>,<com.chinatelecom.chongqing.iworkhelp>,<1721484>,<1721484>,<com.mobile.boe>,<1721487>,<1721487>,<com.buybal.buybalpay.nxy.jkepay>,<1721497>,<1721497>,<com.citicbank.comb>,<1721512>,<1721512"

    invoke-virtual {v1, v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->sethashMapOfLinkForVocAppOnlyShow(Ljava/lang/String;)V

    new-array v1, v5, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    move v8, v4

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v13, v5

    const/4 v5, 0x3

    move v14, v6

    const/16 v6, 0xa

    move v15, v8

    const-string v8, "did not then call Service"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v11

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v8, "Not allowed to"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v12

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/16 v6, 0x17

    const-string v8, "libjiagu.so"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v3

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v8, "libDexHelper"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v22

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v8, "libSecShell.so"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v23

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v8, "Anonymous-DexFile@"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v2

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v8, "com.secneo.apkwrapper"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v24

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v9, "32bit"

    const/16 v6, 0x19

    const-string v8, "OutOfMemoryError"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v25

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v9, "libs>,<android.provider.Settings"

    const-string/jumbo v10, "supportFlag>,<3"

    const/16 v6, 0x23

    const-string v8, "Unable to get provider com.google.android.gsf.gservices.GservicesProvider"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v26

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v9, "libs>,<android.provider.Settings"

    const-string/jumbo v10, "supportFlag>,<3"

    const-string v8, "Attempt to invoke interface method \'android.os.Bundle android.content.IContentProvider.call(android.content.AttributionSource, java.lang.String, java.lang.String, java.lang.String, android.os.Bundle)\' on a null object reference"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v27

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v6, 0x11

    const-string v8, "Unable to start activity"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v28

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/16 v6, 0x12

    const-string v8, "dlopen failed: library"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v29

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v9, "libs>,<Failed to load WebView provider: No WebView installed"

    const-string/jumbo v10, "supportFlag>,<3"

    const/16 v6, 0x13

    const-string v8, "MissingWebViewPackageException"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v30

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v9, "libs>,<has no access to content://media/external/images/media"

    const-string/jumbo v10, "supportFlag>,<3"

    const/16 v6, 0x1b

    const-string v8, "SecurityException"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v31

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v9, "libs>,<has no access to content://media/external/images/media"

    const-string/jumbo v10, "supportFlag>,<3"

    const-string v8, "RecoverableSecurityException"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v32

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string/jumbo v9, "pkgName"

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-string v8, "NullPointerException"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v15

    iget-object v4, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iput-object v1, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_DetailMsgTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    new-array v1, v15, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v9, 0x0

    const/4 v5, 0x4

    const/16 v6, 0x17

    const-string v8, "libjiagu.so"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v11

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v8, "libDexHelper"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v12

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v8, "libSecShell.so"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v3

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v8, "Anonymous-DexFile@"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v22

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v8, "com.secneo.apkwrapper"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v23

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/16 v6, 0x12

    const-string v8, "dlopen failed: library"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v2

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v9, "libs>,<libmonochrome.so>,<libmonochrome_64.so>,<libwebviewchromium"

    const-string/jumbo v10, "supportFlag>,<3"

    const/16 v6, 0x13

    const-string v8, "com.google.android.webview"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v24

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v9, "libs>,<libmonochrome.so>,<libmonochrome_64.so>,<libwebviewchromium"

    const-string/jumbo v10, "supportFlag>,<3"

    const-string v8, "WebViewGoogle.apk"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v25

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v9, "libs>,<libmonochrome.so>,<libmonochrome_64.so>,<libwebviewchromium"

    const-string/jumbo v10, "supportFlag>,<3"

    const-string v8, "com.google.android.trichromelibrary"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v26

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v9, "libs>,<Failed to load WebView provider: No WebView installed"

    const-string/jumbo v10, "supportFlag>,<3"

    const-string v8, "MissingWebViewPackageException"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v27

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v9, 0x0

    const-string/jumbo v10, "supportFlag>,<3"

    const-string v8, "chromium-SystemWebViewGoogle"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v28

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string/jumbo v10, "supportFlag>,<3"

    const-string v8, "chromium-TrichromeWebViewGoogle"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v29

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string/jumbo v10, "supportFlag>,<3"

    const/16 v6, 0x22

    const-string v8, "ENOSPC (No space left on device)"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v30

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string/jumbo v9, "pkgName"

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "null pointer"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v31

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string/jumbo v9, "pkgName"

    const/16 v6, 0x18

    const-string v8, "fault addr"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v32

    iget-object v4, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iput-object v1, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    new-array v1, v2, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v9, "libs>,<libmonochrome.so>,<libmonochrome_64.so>,<libwebviewchromium"

    const-string/jumbo v10, "supportFlag>,<3"

    const/4 v5, 0x5

    const/16 v6, 0x13

    const-string v8, "com.google.android.webview"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v11

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v9, "libs>,<libmonochrome.so>,<libmonochrome_64.so>,<libwebviewchromium"

    const-string/jumbo v10, "supportFlag>,<3"

    const-string v8, "WebViewGoogle.apk"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v12

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v9, "libs>,<libmonochrome.so>,<libmonochrome_64.so>,<libwebviewchromium"

    const-string/jumbo v10, "supportFlag>,<3"

    const-string v8, "com.google.android.trichromelibrary"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v3

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v9, 0x0

    const-string/jumbo v10, "supportFlag>,<3"

    const/16 v6, 0x22

    const-string v8, "ENOSPC (No space left on device)"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v22

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v9, "libs>,<android.provider.Settings"

    const-string/jumbo v10, "supportFlag>,<3"

    const/16 v6, 0x23

    const-string v8, "Unable to get provider com.google.android.gsf.gservices.GservicesProvider"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v23

    iget-object v4, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iput-object v1, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    new-array v1, v14, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x6

    const/16 v6, 0x17

    const-string v8, "libjiagu.so"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v11

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v8, "libDexHelper"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v12

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v8, "libSecShell.so"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v3

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v8, "Anonymous-DexFile@"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v22

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v8, "com.secneo.apkwrapper"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v23

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/16 v6, 0xe

    const-string/jumbo v8, "stack corruption"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v2

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string/jumbo v8, "stack overflow"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v24

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/16 v6, 0x15

    const-string/jumbo v8, "overflow_error"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v25

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v9, "32bit"

    const/16 v6, 0x19

    const-string v8, "OutOfMemoryError"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v26

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v9, "32bit"

    const-string v8, "GL errors"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v27

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v9, "32bit"

    const-string v8, "GL_OUT_OF_MEMORY"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v28

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v9, "32bit"

    const-string v8, "bad_alloc"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v29

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v9, 0x0

    const/16 v6, 0x1a

    const-string v8, "JNI DETECTED ERROR"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v30

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v8, "JNI_ERR"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v31

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string/jumbo v10, "supportFlag>,<3"

    const/4 v6, 0x7

    const-string v8, "NoClassDefFoundError"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v32

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v10, 0x0

    const/16 v6, 0x14

    const-string v8, "invalid_argument"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v15

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v6, 0x2

    const-string/jumbo v8, "out_of_range"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v13

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v8, "length_error"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v33

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string/jumbo v9, "pkgName"

    const/4 v6, 0x0

    const-string/jumbo v8, "null pointer"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v34

    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string/jumbo v9, "pkgName"

    const/16 v6, 0x18

    const-string v8, "fault addr"

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v35

    iget-object v0, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iput-object v1, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_HeaderInfoTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    return-void
.end method
