package zxl.qipei.biBeiDe.model;

/**
 * Created by Administrator on 2017/12/15.
 */
public class PageModel {
    private int totalNum;
    private int totalPage;
    private int pageSize=3;
    private int pageNo;

    public void init(int tNum){
        setTotalNum(tNum);
        setTotalPage(tNum/pageSize+(tNum%pageSize==0?0:1));
        setPageNo(1);
    }

    public void setTotalNum(int totalNum) {
        this.totalNum = totalNum;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

    public int getTotalNum() {

        return totalNum;
    }
}
