<template>
  <!--消费金融-用户管理-->
  <section class="page user-manage">
    <!--<data-form :model="userModel" @onSearch="refreshData" :page="pageUtil">-->
      <!--<template slot="default-input">-->
        <!--<el-form-item label="账号" prop="account">-->
          <!--<el-input v-model="userModel.account"></el-input>-->
        <!--</el-form-item>-->
        <!--<el-form-item label="姓名" prop="realName">-->
          <!--<el-input v-model="userModel.realName"></el-input>-->
        <!--</el-form-item>-->
        <!--<el-form-item label="手机号" prop="tel">-->
          <!--<el-input v-model="userModel.tel"></el-input>-->
        <!--</el-form-item>-->
      <!--</template>-->

    <!--</data-form>-->
    <data-box :data="appCustomerDataSet" @onPageChange="refreshData" :page="pageUtil" ref="data-box">
      <template slot="columns">

        <el-table-column prop="nickname" label="昵称" :min-width="$helper.getColumnWidth(4)" show-overflow-tooltip>
        </el-table-column>
        <el-table-column prop="phone" label="手机号码" :min-width="$helper.getColumnWidth(4)" show-overflow-tooltip>
        </el-table-column>
        <el-table-column prop="status" label="状态" :min-width="$helper.getColumnWidth(2)">
          <template slot-scope="scope">
            <span v-if="scope.row.status == 1">启用</span>
            <span v-if="scope.row.status == 0">停用</span>
            <span v-if="scope.row.status == 2">锁定</span>
          </template>
        </el-table-column>
        <el-table-column prop="errorCount" label="登录错误次数" :min-width="$helper.getColumnWidth(4)" show-overflow-tooltip>
        </el-table-column>
        <el-table-column prop="lastLoginTime" label="最后一次登录时间" :min-width="$helper.getColumnWidth(4)">
          <template slot-scope="scope">
            <span>{{$dateutils.dateTimeFormat(scope.row.lastLoginTime)}}</span>
          </template>
        </el-table-column>

        <el-table-column prop="updateTime" label="修改时间" :min-width="$helper.getColumnWidth(4)">
          <template slot-scope="scope">
            <span>{{$dateutils.dateTimeFormat(scope.row.updateTime)}}</span>
          </template>
        </el-table-column>
        <el-table-column label="操作" :min-width="$helper.getColumnWidth(10)">
          <template slot-scope="scope">

            <el-button type="text" @click="enableClick(scope)"
                       v-if="scope.row.status === 0">启用
            </el-button>
            <el-button type="text" @click="disableClick(scope)"
                       v-if="scope.row.status === 1">停用
            </el-button>

          </template>
        </el-table-column>
      </template>
    </data-box>

  </section>
</template>

<script lang="ts">
  import Vue from "vue";
  import Component from "vue-class-component";
  import {Auth, Layout, Dependencies} from "~/core/decorator";
  import {entCustomerService} from "~/server/services/app-service/app-customer.service";
  import {PageUtil} from "~/utils/page.util";
  import DataForm from "~/components/common/data-form.vue";
  import DataBox from "~/components/common/data-box.vue";

  @Layout("workspace")
  @Component({
    components: {
      DataForm,
      DataBox,
    }
  })
  export default class UserManage extends Vue {
    @Dependencies(entCustomerService) private entCustomerService: entCustomerService;
    @Dependencies(PageUtil) private pageUtil: PageUtil;
    private appCustomerDataSet = null;
    private userModel: any = {
      account: "",
      realName: "",
      tel: ""
    };
    private dialog: any = {

    };

    /**
     * 启用
     */
    enableClick(scope, type) {
      this.$confirm('确认启用吗?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        this.entCustomerService.updateStatus({status: '1', id: scope.row.id}).subscribe(data => {
          this.$message({
            type: 'success',
            message: '启用成功!'
          })
          this.pageUtil.reset()
          this.refreshData()
        }, ({msg}) => {
          this.$message.error(msg);
        })
      }).catch(() => {
      })
    }

    /**
     * 停用
     */
    disableClick(scope, type) {
      this.$confirm('确认停用吗?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        this.entCustomerService.updateStatus({status: '0', id: scope.row.id}).subscribe(data => {
          this.$message({
            type: 'success',
            message: '停用成功!'
          })
          this.pageUtil.reset()
          this.refreshData()
        }, ({msg}) => {
          this.$message.error(msg);
        })
      }).catch(() => {
      })
    }


    refreshData() {
      this.entCustomerService.getCustomerList(this.userModel, this.pageUtil).subscribe(
        data => {
          this.appCustomerDataSet = data.list;
        },
        ({msg}) => {
          this.$message.error(msg);
        }
      );
    }

    mounted() {
      this.refreshData()
    }
  }
</script>

<style lang="less">
  .tree-header {
    padding: 10px 20px;
    border-bottom: 1px solid #e4e4e4;
  }
</style>
