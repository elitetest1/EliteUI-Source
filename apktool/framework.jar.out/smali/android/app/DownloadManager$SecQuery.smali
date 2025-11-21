.class public Landroid/app/DownloadManager$SecQuery;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecQuery"
.end annotation


# static fields
.field public static final blacklist ORDER_ASCENDING:I = 0x1

.field public static final blacklist ORDER_DESCENDING:I = 0x2


# instance fields
.field private blacklist mFilterString:Ljava/lang/String;

.field private blacklist mIds:[J

.field private blacklist mOnlyIncludeVisibleInDownloadsUi:Z

.field private blacklist mOrderByColumn:Ljava/lang/String;

.field private blacklist mOrderDirection:I

.field private blacklist mStatusFlags:Ljava/lang/Integer;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mStatusFlags:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mFilterString:Ljava/lang/String;

    const-string v0, "lastmod"

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderByColumn:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderDirection:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/DownloadManager$SecQuery;->mOnlyIncludeVisibleInDownloadsUi:Z

    return-void
.end method

.method private blacklist joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist statusClause(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "status"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist orderBy(Ljava/lang/String;I)Landroid/app/DownloadManager$SecQuery;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid direction: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string v0, "last_modified_timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "lastmod"

    iput-object p1, p0, Landroid/app/DownloadManager$SecQuery;->mOrderByColumn:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p1, "total_bytes"

    iput-object p1, p0, Landroid/app/DownloadManager$SecQuery;->mOrderByColumn:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo p1, "title COLLATE NOCASE"

    iput-object p1, p0, Landroid/app/DownloadManager$SecQuery;->mOrderByColumn:Ljava/lang/String;

    :goto_1
    iput p2, p0, Landroid/app/DownloadManager$SecQuery;->mOrderDirection:I

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot order by "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, v1

    :goto_0
    iget-object v3, p0, Landroid/app/DownloadManager$SecQuery;->mFilterString:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :goto_1
    new-array v7, v2, [Ljava/lang/String;

    const/4 v3, 0x1

    if-lez v2, :cond_3

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    invoke-static {v1, v7}, Landroid/app/DownloadManager;->getWhereArgsForIds([J[Ljava/lang/String;)[Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Landroid/app/DownloadManager$SecQuery;->mFilterString:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "title LIKE ?"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr v2, v3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/app/DownloadManager$SecQuery;->mFilterString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v2

    :cond_3
    const-string v1, " AND "

    invoke-direct {p0, v1, v0}, Landroid/app/DownloadManager$SecQuery;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    iget v0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderDirection:I

    if-ne v0, v3, :cond_4

    const-string v0, "ASC"

    goto :goto_2

    :cond_4
    const-string v0, "DESC"

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderByColumn:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, p1

    move-object v5, p2

    move-object v4, p3

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public varargs blacklist setFilterById([J)Landroid/app/DownloadManager$SecQuery;
    .locals 0

    iput-object p1, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    return-object p0
.end method

.method public blacklist setFilterByStatus(I)Landroid/app/DownloadManager$SecQuery;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/app/DownloadManager$SecQuery;->mStatusFlags:Ljava/lang/Integer;

    return-object p0
.end method

.method public blacklist setFilterByString(Ljava/lang/String;)Landroid/app/DownloadManager$SecQuery;
    .locals 0

    iput-object p1, p0, Landroid/app/DownloadManager$SecQuery;->mFilterString:Ljava/lang/String;

    return-object p0
.end method
