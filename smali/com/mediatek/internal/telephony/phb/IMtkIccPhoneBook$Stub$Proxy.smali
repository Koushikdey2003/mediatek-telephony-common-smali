.class Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkIccPhoneBook.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static blacklist sDefaultImpl:Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 1323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1324
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1325
    return-void
.end method


# virtual methods
.method public blacklist addContactToGroup(III)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1906
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1909
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1910
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1911
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1912
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1913
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1914
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1915
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->addContactToGroup(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1921
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1915
    return v3

    .line 1917
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1918
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1921
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1923
    nop

    .line 1924
    return v2

    .line 1921
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1923
    throw v2
.end method

.method public whitelist test-api asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1328
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist colorAddAdnRecordsInEfBySearchExUsingSubId(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 16
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "oldTag"    # Ljava/lang/String;
    .param p4, "oldPhoneNumber"    # Ljava/lang/String;
    .param p5, "newTag"    # Ljava/lang/String;
    .param p6, "newPhoneNumber1"    # Ljava/lang/String;
    .param p7, "newPhoneNumber2"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2663
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2666
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2667
    move/from16 v13, p1

    :try_start_1
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2668
    move/from16 v14, p2

    :try_start_2
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2669
    move-object/from16 v15, p3

    :try_start_3
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2670
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2671
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2672
    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2673
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2674
    move-object/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2675
    move-object/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2676
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2677
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2678
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->colorAddAdnRecordsInEfBySearchExUsingSubId(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2684
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2678
    return v3

    .line 2680
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2681
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v3

    .line 2684
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2686
    nop

    .line 2687
    return v0

    .line 2684
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_0

    :catchall_3
    move-exception v0

    move/from16 v13, p1

    :goto_0
    move/from16 v14, p2

    :goto_1
    move-object/from16 v15, p3

    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2686
    throw v0
.end method

.method public blacklist colorGetAdnEmailLenUsingSubId(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2767
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2770
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2771
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2772
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2773
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2774
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->colorGetAdnEmailLenUsingSubId(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2774
    return v3

    .line 2776
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2777
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2780
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2782
    nop

    .line 2783
    return v2

    .line 2780
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2782
    throw v2
.end method

.method public blacklist colorGetSimNameLenUsingSubId(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2642
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2645
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2646
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2647
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2648
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2649
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->colorGetSimNameLenUsingSubId(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2649
    return v3

    .line 2651
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2652
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2655
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2657
    nop

    .line 2658
    return v2

    .line 2655
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2657
    throw v2
.end method

.method public blacklist colorGetSimPhonebookAllSpace(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2788
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2791
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2792
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2793
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2794
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2795
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->colorGetSimPhonebookAllSpace(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2795
    return v3

    .line 2797
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2798
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2801
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2803
    nop

    .line 2804
    return v2

    .line 2801
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2803
    throw v2
.end method

.method public blacklist colorGetSimPhonebookUsedSpace(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2809
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2812
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2813
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2814
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2815
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2816
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->colorGetSimPhonebookUsedSpace(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2816
    return v3

    .line 2818
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2819
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2822
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2824
    nop

    .line 2825
    return v2

    .line 2822
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2824
    throw v2
.end method

.method public blacklist colorISPhoneBookReady(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2720
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2723
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2724
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2725
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2726
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2727
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->colorISPhoneBookReady(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2727
    return v3

    .line 2729
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2730
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2733
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2735
    nop

    .line 2736
    return v2

    .line 2733
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2735
    throw v2
.end method

.method public blacklist colorIsPhoneBookPbrExist(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2744
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2747
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2748
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2749
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2750
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2751
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->colorIsPhoneBookPbrExist(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2751
    return v3

    .line 2753
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2754
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2757
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2759
    nop

    .line 2760
    return v2

    .line 2757
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2759
    throw v2
.end method

.method public blacklist colorUpdateAdnRecordsInEfByIndexExUsingSubId(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "newTag"    # Ljava/lang/String;
    .param p4, "newPhoneNumber1"    # Ljava/lang/String;
    .param p5, "newPhoneNumber2"    # Ljava/lang/String;
    .param p6, "index"    # I
    .param p7, "pin2"    # Ljava/lang/String;
    .param p8, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2692
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2695
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 2696
    move/from16 v12, p1

    :try_start_1
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2697
    move/from16 v13, p2

    :try_start_2
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2698
    move-object/from16 v14, p3

    :try_start_3
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2699
    move-object/from16 v15, p4

    :try_start_4
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2700
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2701
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2702
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2703
    move-object/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2704
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2705
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2706
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->colorUpdateAdnRecordsInEfByIndexExUsingSubId(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2712
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2706
    return v3

    .line 2708
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2709
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v0, v4

    .line 2712
    .local v0, "_result":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2714
    nop

    .line 2715
    return v0

    .line 2712
    .end local v0    # "_result":Z
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_0

    :catchall_4
    move-exception v0

    move/from16 v12, p1

    :goto_0
    move/from16 v13, p2

    :goto_1
    move-object/from16 v14, p3

    :goto_2
    move-object/from16 v15, p4

    :goto_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2714
    throw v0
.end method

.method public blacklist getAdnRecordsCapacity()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2586
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2589
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2590
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2591
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2592
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getAdnRecordsCapacity()[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2592
    return-object v3

    .line 2594
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2595
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2598
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2600
    nop

    .line 2601
    return-object v2

    .line 2598
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2600
    throw v2
.end method

.method public blacklist getAdnRecordsCapacityForSubscriber(I)[I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2618
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2621
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2622
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2623
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2624
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2625
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getAdnRecordsCapacityForSubscriber(I)[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2631
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2625
    return-object v3

    .line 2627
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2628
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2631
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2633
    nop

    .line 2634
    return-object v2

    .line 2631
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2633
    throw v2
.end method

.method public blacklist getAdnRecordsInEf(I)Ljava/util/List;
    .locals 5
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1344
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1347
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1349
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1350
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1351
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1351
    return-object v3

    .line 1353
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1354
    sget-object v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1357
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1359
    nop

    .line 1360
    return-object v2

    .line 1357
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1359
    throw v2
.end method

.method public blacklist getAdnRecordsInEfForSubscriber(II)Ljava/util/List;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1373
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1376
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1378
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1379
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1380
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1381
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1381
    return-object v3

    .line 1383
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1384
    sget-object v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1387
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1389
    nop

    .line 1390
    return-object v2

    .line 1387
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1389
    throw v2
.end method

.method public blacklist getAnrCount(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2238
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2241
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2242
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2243
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2244
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2245
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getAnrCount(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2245
    return v3

    .line 2247
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2248
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2251
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2253
    nop

    .line 2254
    return v2

    .line 2251
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2253
    throw v2
.end method

.method public blacklist getEmailCount(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2269
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2272
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2273
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2274
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2275
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2276
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getEmailCount(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2276
    return v3

    .line 2278
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2279
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2282
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2284
    nop

    .line 2285
    return v2

    .line 2282
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2284
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1332
    const-string v0, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    return-object v0
.end method

.method public blacklist getPhonebookMemStorageExt(I)[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2525
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2528
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2529
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2530
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2531
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2532
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getPhonebookMemStorageExt(I)[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2532
    return-object v3

    .line 2534
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2535
    sget-object v3, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2538
    .local v2, "_result":[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2540
    nop

    .line 2541
    return-object v2

    .line 2538
    .end local v2    # "_result":[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2540
    throw v2
.end method

.method public blacklist getSneRecordLen(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2465
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2468
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2469
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2470
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2471
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2472
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getSneRecordLen(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2478
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2472
    return v3

    .line 2474
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2475
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2478
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2480
    nop

    .line 2481
    return v2

    .line 2478
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2480
    throw v2
.end method

.method public blacklist getUpbDone(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2554
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2557
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2558
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2559
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2560
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2561
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getUpbDone(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2561
    return v3

    .line 2563
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2564
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2567
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2569
    nop

    .line 2570
    return v2

    .line 2567
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2569
    throw v2
.end method

.method public blacklist getUsimAasById(II)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2173
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2176
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2178
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2179
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2180
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2181
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getUsimAasById(II)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2181
    return-object v3

    .line 2183
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2184
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2187
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2189
    nop

    .line 2190
    return-object v2

    .line 2187
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2189
    throw v2
.end method

.method public blacklist getUsimAasList(I)Ljava/util/List;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/AlphaTag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2141
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2144
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2145
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2146
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2147
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2148
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getUsimAasList(I)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2148
    return-object v3

    .line 2150
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2151
    sget-object v3, Lcom/mediatek/internal/telephony/phb/AlphaTag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2154
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/AlphaTag;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2156
    nop

    .line 2157
    return-object v2

    .line 2154
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/AlphaTag;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2156
    throw v2
.end method

.method public blacklist getUsimAasMaxCount(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2300
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2303
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2305
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2306
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2307
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getUsimAasMaxCount(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2307
    return v3

    .line 2309
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2310
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2313
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2315
    nop

    .line 2316
    return v2

    .line 2313
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2315
    throw v2
.end method

.method public blacklist getUsimAasMaxNameLen(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2334
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2336
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2337
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2338
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getUsimAasMaxNameLen(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2338
    return v3

    .line 2340
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2341
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2344
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2346
    nop

    .line 2347
    return v2

    .line 2344
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2346
    throw v2
.end method

.method public blacklist getUsimGroupById(II)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "nGasId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1771
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1774
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1775
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1776
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1777
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1778
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1779
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getUsimGroupById(II)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1779
    return-object v3

    .line 1781
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1782
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1785
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1787
    nop

    .line 1788
    return-object v2

    .line 1785
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1787
    throw v2
.end method

.method public blacklist getUsimGroups(I)Ljava/util/List;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/UsimGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1739
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1742
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1743
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1744
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1745
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1746
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getUsimGroups(I)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1752
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1746
    return-object v3

    .line 1748
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1749
    sget-object v3, Lcom/mediatek/internal/telephony/phb/UsimGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1752
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/UsimGroup;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1754
    nop

    .line 1755
    return-object v2

    .line 1752
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/UsimGroup;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1754
    throw v2
.end method

.method public blacklist getUsimGrpMaxCount(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2110
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2113
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2114
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2115
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2116
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2117
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getUsimGrpMaxCount(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2117
    return v3

    .line 2119
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2120
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2123
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2125
    nop

    .line 2126
    return v2

    .line 2123
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2125
    throw v2
.end method

.method public blacklist getUsimGrpMaxNameLen(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2078
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2079
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2082
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2083
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2084
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2085
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2086
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getUsimGrpMaxNameLen(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2086
    return v3

    .line 2088
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2089
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2092
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2094
    nop

    .line 2095
    return v2

    .line 2092
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2094
    throw v2
.end method

.method public blacklist hasExistGroup(ILjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "grpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2047
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2050
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2051
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2052
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2053
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2054
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2055
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->hasExistGroup(ILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2055
    return v3

    .line 2057
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2058
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2061
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2063
    nop

    .line 2064
    return v2

    .line 2061
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2063
    throw v2
.end method

.method public blacklist hasSne(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2434
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2437
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2438
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2439
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2440
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2441
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->hasSne(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2441
    return v3

    .line 2443
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2444
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2447
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2449
    nop

    .line 2450
    return v2

    .line 2447
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2449
    throw v2
.end method

.method public blacklist insertUsimAas(ILjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "aasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2206
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2209
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2210
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2211
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2212
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2213
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2214
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->insertUsimAas(ILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2214
    return v3

    .line 2216
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2217
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2220
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2222
    nop

    .line 2223
    return v2

    .line 2220
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2222
    throw v2
.end method

.method public blacklist insertUsimGroup(ILjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "grpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1837
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1840
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1841
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1842
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1843
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1844
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1845
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->insertUsimGroup(ILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1845
    return v3

    .line 1847
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1848
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 1851
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1853
    nop

    .line 1854
    return v2

    .line 1851
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1853
    throw v2
.end method

.method public blacklist isAdnAccessible(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2494
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2497
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2498
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2499
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2500
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2501
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->isAdnAccessible(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2501
    return v3

    .line 2503
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2504
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2507
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2509
    nop

    .line 2510
    return v2

    .line 2507
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2509
    throw v2
.end method

.method public blacklist isPhbReady(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1706
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1709
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1710
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1711
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1712
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1713
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->isPhbReady(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1713
    return v3

    .line 1715
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1716
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1719
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1721
    nop

    .line 1722
    return v2

    .line 1719
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1721
    throw v2
.end method

.method public blacklist moveContactFromGroupsToGroups(II[I[I)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "fromGrpIdList"    # [I
    .param p4, "toGrpIdList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2011
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2012
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2015
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2017
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2018
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2019
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2020
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2021
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2022
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->moveContactFromGroupsToGroups(II[I[I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2028
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2022
    return v3

    .line 2024
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2025
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2028
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2030
    nop

    .line 2031
    return v2

    .line 2028
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2030
    throw v2
.end method

.method public blacklist removeContactFromGroup(III)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1941
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1944
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1946
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1947
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1948
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1949
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1950
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->removeContactFromGroup(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1950
    return v3

    .line 1952
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1953
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1956
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1958
    nop

    .line 1959
    return v2

    .line 1956
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1958
    throw v2
.end method

.method public blacklist removeUsimAasById(III)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "index"    # I
    .param p3, "pbrIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2401
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2404
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2405
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2406
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2407
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2408
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2409
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2410
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->removeUsimAasById(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2410
    return v3

    .line 2412
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2413
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2416
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2418
    nop

    .line 2419
    return v2

    .line 2416
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2418
    throw v2
.end method

.method public blacklist removeUsimGroupById(II)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "nGasId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1804
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1807
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1808
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1809
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1810
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1811
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1812
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->removeUsimGroupById(II)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1818
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1812
    return v3

    .line 1814
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1815
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1818
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1820
    nop

    .line 1821
    return v2

    .line 1818
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1820
    throw v2
.end method

.method public blacklist updateAdnRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 16
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "newTag"    # Ljava/lang/String;
    .param p4, "newPhoneNumber"    # Ljava/lang/String;
    .param p5, "index"    # I
    .param p6, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1525
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1528
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 1529
    move/from16 v10, p1

    :try_start_1
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 1530
    move/from16 v11, p2

    :try_start_2
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1531
    move-object/from16 v12, p3

    :try_start_3
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1532
    move-object/from16 v13, p4

    :try_start_4
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1533
    move/from16 v14, p5

    :try_start_5
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1534
    move-object/from16 v15, p6

    :try_start_6
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1535
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1536
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1537
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateAdnRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1543
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1544
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1537
    return v3

    .line 1539
    :cond_0
    :try_start_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1540
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v0, v3

    .line 1543
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1544
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1545
    nop

    .line 1546
    return v0

    .line 1543
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    goto :goto_1

    :catchall_5
    move-exception v0

    goto :goto_0

    :catchall_6
    move-exception v0

    move/from16 v10, p1

    :goto_0
    move/from16 v11, p2

    :goto_1
    move-object/from16 v12, p3

    :goto_2
    move-object/from16 v13, p4

    :goto_3
    move/from16 v14, p5

    :goto_4
    move-object/from16 v15, p6

    :goto_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1544
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1545
    throw v0
.end method

.method public blacklist updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 16
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "oldTag"    # Ljava/lang/String;
    .param p4, "oldPhoneNumber"    # Ljava/lang/String;
    .param p5, "newTag"    # Ljava/lang/String;
    .param p6, "newPhoneNumber"    # Ljava/lang/String;
    .param p7, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1418
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1421
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1422
    move/from16 v11, p1

    :try_start_1
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1423
    move/from16 v12, p2

    :try_start_2
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1424
    move-object/from16 v13, p3

    :try_start_3
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1425
    move-object/from16 v14, p4

    :try_start_4
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1426
    move-object/from16 v15, p5

    :try_start_5
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1427
    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1428
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1429
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1430
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1431
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1437
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1431
    return v3

    .line 1433
    :cond_0
    :try_start_6
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1434
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v0, v3

    .line 1437
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1439
    nop

    .line 1440
    return v0

    .line 1437
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    goto :goto_0

    :catchall_5
    move-exception v0

    move/from16 v11, p1

    :goto_0
    move/from16 v12, p2

    :goto_1
    move-object/from16 v13, p3

    :goto_2
    move-object/from16 v14, p4

    :goto_3
    move-object/from16 v15, p5

    :goto_4
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1439
    throw v0
.end method

.method public blacklist updateContactToGroups(II[I)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIdList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1976
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1979
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1980
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1981
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1982
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1983
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1984
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1985
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateContactToGroups(II[I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1991
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1985
    return v3

    .line 1987
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1988
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1991
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1993
    nop

    .line 1994
    return v2

    .line 1991
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1993
    throw v2
.end method

.method public blacklist updateUsimAas(IIILjava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "index"    # I
    .param p3, "pbrIndex"    # I
    .param p4, "aasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2365
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2368
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2369
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2370
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2371
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2372
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2373
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2374
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2375
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimAas(IIILjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2375
    return v3

    .line 2377
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2378
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2381
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2383
    nop

    .line 2384
    return v2

    .line 2381
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2383
    throw v2
.end method

.method public blacklist updateUsimGroup(IILjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "nGasId"    # I
    .param p3, "grpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1871
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1874
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1875
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1876
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1877
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1878
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1879
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1880
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimGroup(IILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1880
    return v3

    .line 1882
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1883
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 1886
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1888
    nop

    .line 1889
    return v2

    .line 1886
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1888
    throw v2
.end method

.method public blacklist updateUsimPBRecordsByIndexWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "record"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1617
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1620
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1622
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1623
    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 1624
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1625
    invoke-virtual {p3, v0, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1628
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1630
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1631
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1632
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1633
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsByIndexWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1633
    return v3

    .line 1635
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1636
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 1639
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1641
    nop

    .line 1642
    return v2

    .line 1639
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1641
    throw v2
.end method

.method public blacklist updateUsimPBRecordsBySearchWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p4, "newAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1663
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1666
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1667
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1668
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1669
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 1670
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1671
    invoke-virtual {p3, v0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1674
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1676
    :goto_0
    if-eqz p4, :cond_1

    .line 1677
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1678
    invoke-virtual {p4, v0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1681
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1683
    :goto_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1684
    .local v2, "_status":Z
    if-nez v2, :cond_2

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1685
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsBySearchWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1685
    return v3

    .line 1687
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1688
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 1691
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1693
    nop

    .line 1694
    return v2

    .line 1691
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1693
    throw v2
.end method

.method public blacklist updateUsimPBRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 16
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "newTag"    # Ljava/lang/String;
    .param p4, "newPhoneNumber"    # Ljava/lang/String;
    .param p5, "newAnr"    # Ljava/lang/String;
    .param p6, "newGrpIds"    # Ljava/lang/String;
    .param p7, "newEmails"    # [Ljava/lang/String;
    .param p8, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1572
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1573
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1576
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1577
    move/from16 v12, p1

    :try_start_1
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1578
    move/from16 v13, p2

    :try_start_2
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1579
    move-object/from16 v14, p3

    :try_start_3
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1580
    move-object/from16 v15, p4

    :try_start_4
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1581
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1582
    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1583
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1584
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1585
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1586
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1587
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1593
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1594
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1587
    return v3

    .line 1589
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1590
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v3

    .line 1593
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1594
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1595
    nop

    .line 1596
    return v0

    .line 1593
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_0

    :catchall_4
    move-exception v0

    move/from16 v12, p1

    :goto_0
    move/from16 v13, p2

    :goto_1
    move-object/from16 v14, p3

    :goto_2
    move-object/from16 v15, p4

    :goto_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1594
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1595
    throw v0
.end method

.method public blacklist updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 16
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "oldTag"    # Ljava/lang/String;
    .param p4, "oldPhoneNumber"    # Ljava/lang/String;
    .param p5, "oldAnr"    # Ljava/lang/String;
    .param p6, "oldGrpIds"    # Ljava/lang/String;
    .param p7, "oldEmails"    # [Ljava/lang/String;
    .param p8, "newTag"    # Ljava/lang/String;
    .param p9, "newPhoneNumber"    # Ljava/lang/String;
    .param p10, "newAnr"    # Ljava/lang/String;
    .param p11, "newGrpIds"    # Ljava/lang/String;
    .param p12, "newEmails"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1473
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1476
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1477
    move/from16 v15, p1

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1478
    move/from16 v14, p2

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 1479
    move-object/from16 v13, p3

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1480
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1481
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1482
    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1483
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1484
    move-object/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1485
    move-object/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1486
    move-object/from16 v6, p10

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1487
    move-object/from16 v5, p11

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1488
    move-object/from16 v4, p12

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1489
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1490
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1491
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-interface/range {v3 .. v15}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1497
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1491
    return v3

    .line 1493
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1494
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    .line 1497
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1499
    nop

    .line 1500
    return v0

    .line 1497
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1499
    throw v0
.end method
