.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final greylist-max-o PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MtpPropertyGroup"


# instance fields
.field private greylist-max-o mColumns:[Ljava/lang/String;

.field private final greylist-max-o mProperties:[Landroid/mtp/MtpPropertyGroup$Property;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>([I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v0, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v5, p1, v3

    invoke-direct {p0, v5, v1}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    :goto_1
    if-ge v2, p1, :cond_1

    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private greylist-max-o createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    const/4 v0, 0x6

    const/4 v1, 0x4

    const v2, 0xffff

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    sget-object v0, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unsupported property "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_2

    :sswitch_0
    const-string v3, "album_artist"

    goto :goto_0

    :sswitch_1
    const-string v3, "album"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "year"

    goto :goto_0

    :sswitch_3
    const-string v3, "composer"

    goto :goto_0

    :sswitch_4
    const-string v3, "genre"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v3, "track"

    goto :goto_1

    :sswitch_6
    const-string v3, "duration"

    goto :goto_2

    :sswitch_7
    const-string v3, "description"

    goto :goto_0

    :sswitch_8
    const-string v3, "artist"

    goto :goto_0

    :sswitch_9
    const/16 v0, 0xa

    goto :goto_2

    :goto_0
    :sswitch_a
    move v0, v2

    goto :goto_2

    :sswitch_b
    const/16 v0, 0x8

    goto :goto_2

    :goto_1
    :sswitch_c
    move v0, v1

    :goto_2
    :sswitch_d
    if-eqz v3, :cond_0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-direct {v1, p0, p1, v0, p2}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v1

    :cond_0
    new-instance p2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v1, -0x1

    invoke-direct {p2, p0, p1, v0, v1}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_d
        0xdc02 -> :sswitch_c
        0xdc03 -> :sswitch_c
        0xdc04 -> :sswitch_b
        0xdc07 -> :sswitch_a
        0xdc09 -> :sswitch_a
        0xdc0b -> :sswitch_d
        0xdc0d -> :sswitch_c
        0xdc41 -> :sswitch_9
        0xdc44 -> :sswitch_a
        0xdc46 -> :sswitch_8
        0xdc48 -> :sswitch_7
        0xdc4e -> :sswitch_a
        0xdc89 -> :sswitch_6
        0xdc8b -> :sswitch_5
        0xdc8c -> :sswitch_4
        0xdc96 -> :sswitch_3
        0xdc99 -> :sswitch_2
        0xdc9a -> :sswitch_1
        0xdc9b -> :sswitch_0
        0xdce0 -> :sswitch_a
        0xde92 -> :sswitch_c
        0xde93 -> :sswitch_d
        0xde94 -> :sswitch_c
        0xde99 -> :sswitch_d
        0xde9a -> :sswitch_d
    .end sparse-switch
.end method

.method private native greylist-max-o format_date_time(J)Ljava/lang/String;
.end method


# virtual methods
.method public blacklist getPropertyList(Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpPropertyList;)I
    .locals 22

    move-object/from16 v0, p0

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v10

    move v12, v11

    :goto_0
    if-ge v12, v9, :cond_9

    aget-object v3, v8, v12

    iget v4, v3, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v13, p2

    :try_start_1
    invoke-static {v4, v13}, Landroid/mtp/MtpDatabase;->getObjectPropertiesUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const-string v17, "_data=?"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v14, p1

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v20}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v10

    goto :goto_1

    :catch_0
    move-object/from16 v13, p2

    :catch_1
    sget-object v4, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    const-string v5, "Mediaprovider lookup failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    const v0, 0xa801

    return v0

    :cond_0
    move-object/from16 v13, p2

    :cond_1
    :goto_1
    move-object v14, v1

    iget v1, v3, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const-wide/16 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    move-wide v5, v4

    iget v1, v3, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    goto/16 :goto_5

    :sswitch_0
    iget v3, v3, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v4, 0x6

    const-wide/16 v5, 0x0

    move-object/from16 v1, p4

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_7

    :sswitch_1
    iget v3, v3, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    move-object/from16 v1, p4

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_7

    :sswitch_2
    move-object/from16 v1, p4

    if-eqz v14, :cond_2

    iget v4, v3, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v11

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0101T000000"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v3, v3, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_7

    :sswitch_3
    move-object/from16 v1, p4

    if-eqz v14, :cond_3

    iget v4, v3, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    goto :goto_3

    :cond_3
    move v4, v11

    :goto_3
    iget v3, v3, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    rem-int/lit16 v4, v4, 0x3e8

    int-to-long v5, v4

    const/4 v4, 0x4

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_7

    :sswitch_4
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x20

    int-to-long v4, v1

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v15

    add-long v5, v4, v15

    iget v1, v3, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v4, v3, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move v3, v1

    move-object/from16 v1, p4

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_7

    :sswitch_5
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    iget v3, v3, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v4, 0x4

    int-to-long v5, v1

    move-object/from16 v1, p4

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_7

    :sswitch_6
    iget v1, v3, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    move-wide v5, v4

    iget v4, v3, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v3

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v3

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v3

    int-to-long v5, v3

    :goto_4
    move v3, v1

    move-object/from16 v1, p4

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_7

    :sswitch_7
    move-object/from16 v1, p4

    iget v3, v3, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_7

    :sswitch_8
    move-object/from16 v1, p4

    iget v3, v3, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_7

    :sswitch_9
    move-object/from16 v1, p4

    iget v4, v3, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    move v5, v4

    iget v4, v3, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move v3, v5

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_7

    :sswitch_a
    iget v1, v3, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v4, v3, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v5, 0x0

    move v3, v1

    move-object/from16 v1, p4

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_7

    :sswitch_b
    iget v1, v3, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v4, v3, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v3

    int-to-long v5, v3

    move v3, v1

    move-object/from16 v1, p4

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_7

    :sswitch_c
    iget v1, v3, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v4, v3, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v3

    int-to-long v5, v3

    move v3, v1

    move-object/from16 v1, p4

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_7

    :goto_5
    if-eqz v1, :cond_8

    const v4, 0xffff

    if-eq v1, v4, :cond_6

    if-eqz v14, :cond_5

    iget v1, v3, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v5, v4

    :cond_5
    iget v1, v3, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v4, v3, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move v3, v1

    move-object/from16 v1, p4

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_7

    :cond_6
    move-object/from16 v1, p4

    if-eqz v14, :cond_7

    iget v4, v3, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_7
    const-string v4, ""

    :goto_6
    iget v3, v3, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_7

    :cond_8
    move-object/from16 v1, p4

    iget v4, v3, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v3, v3, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v5, 0x0

    move/from16 v21, v4

    move v4, v3

    move/from16 v3, v21

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object v1, v14

    goto/16 :goto_0

    :cond_9
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    const/16 v0, 0x2001

    return v0

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_c
        0xdc02 -> :sswitch_b
        0xdc03 -> :sswitch_a
        0xdc04 -> :sswitch_9
        0xdc07 -> :sswitch_8
        0xdc09 -> :sswitch_7
        0xdc0b -> :sswitch_6
        0xdc0d -> :sswitch_5
        0xdc41 -> :sswitch_4
        0xdc44 -> :sswitch_8
        0xdc4e -> :sswitch_7
        0xdc8b -> :sswitch_3
        0xdc99 -> :sswitch_2
        0xdce0 -> :sswitch_8
        0xde92 -> :sswitch_1
        0xde93 -> :sswitch_0
        0xde94 -> :sswitch_1
        0xde99 -> :sswitch_0
        0xde9a -> :sswitch_0
    .end sparse-switch
.end method
