import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import org.jfree.chart.ChartFactory;

import org.jfree.chart.ChartFrame;

import org.jfree.chart.ChartUtilities;

import org.jfree.chart.JFreeChart;

import org.jfree.chart.plot.PiePlot;
import org.jfree.chart.plot.PlotOrientation;

import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;

public class Results

{
	public static void main(String[] args)

	{

		int y1 = 0;
		int y2 = 0;
		int y3 = 0;
		int y4 = 0;
		int y5 = 0;
		int y6 = 0;

		int count = 0;
		String r1 = "";
		String r2 = "";
		String r3 = "";
		String r4 = "";
		String r5 = "";
		String r6 = "";

		String m = "";
		String d = "";
		String t = "";
		String t1 = "";
		String t2 = "";
		String t3 = "";
		String t4 = "";
		String t5 = "";
		String t6 = "";

		String t11 = "";
		String t22 = "";
		String t33 = "";

		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/project3", "root", "root");
			Statement st = con.createStatement();

			ResultSet rs = st.executeQuery("select * from tweettopic");

			while (rs.next() == true) {
				d = rs.getString("topicname");

				if (d.equalsIgnoreCase("elnfield gt500")) {

					t1 = "elnfield gt500";

					y1 = rs.getInt("count");

				}

				if (d.equalsIgnoreCase("infield classic350")) {

					t2 = "infield classic350";

					y2 = rs.getInt("count");

				}
				if (d.equalsIgnoreCase("sachin")) {

					t3 = "sachin";

					y3 = rs.getInt("count");

				}
				if (d.equalsIgnoreCase("tvs")) {

					t4 = "tvs";

					y4 = rs.getInt("count");

				}
				if (d.equalsIgnoreCase("Apple")) {

					t5 = "Apple";

					y5 = rs.getInt("count");

				}

			}

			DefaultPieDataset pieDataset = new DefaultPieDataset();
			pieDataset.setValue(t1, y1);
			pieDataset.setValue(t2, y2);
			pieDataset.setValue(t3, y3);
			pieDataset.setValue(t4, y4);
			pieDataset.setValue(t5, y5);

			JFreeChart chart = ChartFactory
					.createPieChart(
							"On Summarization and Timeline Generation for Evolutionary Tweet Streams",
							pieDataset, true, true, false);

			ChartFrame chartFrame = new ChartFrame(
					"On Summarization and Timeline Generation for Evolutionary Tweet Streams",
					chart);
			chartFrame.setVisible(true);

			chartFrame.setSize(500, 500);

		} catch (Exception ex) {
			System.out.println(ex);

		}

	}
}